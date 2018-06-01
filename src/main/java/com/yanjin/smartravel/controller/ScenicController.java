package com.yanjin.smartravel.controller;

import com.yanjin.smartravel.domain.ScenicPreOrder;
import com.yanjin.smartravel.response.RestResponse;
import com.yanjin.smartravel.serivce.ScenicPreOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * @author zpj
 * @date 2018/6/1
 */
@RestController
@RequestMapping("/smartravel/scenic")
public class ScenicController {

    @Autowired
    private ScenicPreOrderService scenicPreOrderService;

    /**
     * 预定旅游景点
     * @param scenicId 景点
     * @param session 会话
     * @return
     */
    @RequestMapping("/preorder")
    public RestResponse preOrder(@RequestParam("scenicId") Long scenicId, HttpSession session) {
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

        ScenicPreOrder order = new ScenicPreOrder();

        if (scenicId == 1) {
            order.setScenicName("上海迪士尼度假区一日游");
            order.setPrice(268D);
            order.setStatus(1);
            order.setUserId(userId);
            order.setCreateTime(new Date());
        }

        if (scenicId == 2) {
            order.setScenicName("圣托里尼婚纱旅拍5晚7日");
            order.setPrice(8800D);
            order.setStatus(1);
            order.setUserId(userId);
            order.setCreateTime(new Date());
        }

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
