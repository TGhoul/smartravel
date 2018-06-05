package com.yanjin.smartravel.controller;

import com.yanjin.smartravel.domain.Scenic;
import com.yanjin.smartravel.domain.ScenicPreOrder;
import com.yanjin.smartravel.response.RestResponse;
import com.yanjin.smartravel.serivce.ScenicPreOrderService;
import com.yanjin.smartravel.serivce.ScenicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * @author zpj
 * @date 2018/6/2
 */
@RestController
@RequestMapping("/smartravel/scenic")
public class ScenicController {

    @Autowired
    private ScenicService scenicService;

    @Autowired
    private ScenicPreOrderService scenicPreOrderService;

    /**
     * 保存景点
     * @param
     * @return
     */
    @RequestMapping("/save")
    public RestResponse saveScenic(@RequestParam String name,
                                   @RequestParam Double price,
                                   @RequestParam String summaryImg) {
        RestResponse restResponse = new RestResponse();
        Scenic scenic = new Scenic();
        scenic.setPrice(price);
        scenic.setSummaryImg(summaryImg);
        scenic.setName(name);
        scenic.setCreateTime(new Date());
        scenicService.save(scenic);
        restResponse.setIsSuccess(1);
        return restResponse;
    }

    /**
     * 景点列表
     * @return
     */
    @RequestMapping("/list")
    public RestResponse scenicList() {
        RestResponse restResponse = new RestResponse();
        List<Scenic> scenics = scenicService.findAll(new Sort(Sort.Direction.DESC, "id"));
        restResponse.setIsSuccess(1);
        restResponse.setData(scenics);
        return restResponse;
    }

    /**
     * 下单
     * @param scenicId 路线id
     * @param session 会话
     * @return
     */
    @RequestMapping("/preorder")
    public RestResponse preorder(@RequestParam("scenicId") Long scenicId, HttpSession session) {
        RestResponse restResponse = new RestResponse();
        Long userId = (Long) session.getAttribute("userId");
        if (userId == null) {
            restResponse.setIsSuccess(0);
            restResponse.setErrmsg("请先登录！");
            return restResponse;
        }
        if (scenicId == null) {
            restResponse.setIsSuccess(0);
            restResponse.setErrmsg("缺少参数");
            return restResponse;
        }

        Scenic scenic = scenicService.findOne(scenicId);
        if (scenic == null) {
            restResponse.setIsSuccess(0);
            restResponse.setErrmsg("线路不存在");
            return restResponse;
        }
        ScenicPreOrder order = new ScenicPreOrder();
        order.setCreateTime(new Date());
        order.setPrice(scenic.getPrice());
        order.setUserId(userId);
        order.setScenicName(scenic.getName());
        order.setStatus(1);
        scenicPreOrderService.save(order);
        restResponse.setIsSuccess(1);
        return restResponse;
    }

    /**
     * 景点订单
     * @param session 会话
     * @return
     */
    @RequestMapping("/order/list")
    public RestResponse orderList(HttpSession session) {
        RestResponse restResponse = new RestResponse();
        Long userId = (Long) session.getAttribute("userId");
        if (userId == null) {
            restResponse.setIsSuccess(0);
            restResponse.setErrmsg("请先登录！");
            return restResponse;
        }

        List<ScenicPreOrder> orderList = scenicPreOrderService.findScenicPreOrdersByUserId(userId);
        restResponse.setIsSuccess(1);
        restResponse.setData(orderList);
        return restResponse;
    }
}
