package com.yanjin.smartravel.controller;

import com.yanjin.smartravel.domain.TrainPreOrder;
import com.yanjin.smartravel.response.RestResponse;
import com.yanjin.smartravel.serivce.TrainPreOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author zpj
 * @date 2018/5/29
 */
@RestController
@RequestMapping("/smartravel/train")
public class TrainController {
    @Autowired
    private TrainPreOrderService trainPreOrderService;

    @RequestMapping("/preorder")
    public RestResponse preOrder(@RequestParam("trainId") Long trainId, HttpSession session) throws ParseException {
        RestResponse restResponse = new RestResponse();
        Long userId = (Long) session.getAttribute("userId");
        if (userId == null) {
            restResponse.setIsSuccess(0);
            restResponse.setErrmsg("请先登录！");
            return restResponse;
        }
        if (trainId == null) {
            restResponse.setIsSuccess(0);
            restResponse.setErrmsg("缺少参数");
            return restResponse;
        }

        TrainPreOrder order = new TrainPreOrder();
        SimpleDateFormat sdf =   new SimpleDateFormat( "HH:mm");
        if (trainId == 1) {
            order.setName("北京南 ————> 上海虹桥");
            order.setStartTime(sdf.parse("08:05"));
            order.setEndTime(sdf.parse("13:47"));
            order.setSeatType("一等座");
            order.setUserId(userId);
            order.setTrainNumber("G107");
            order.setOrderTime(new Date());
            order.setPrice(933D);
        }

        if (trainId == 2) {
            order.setName("北京南 ————> 上海虹桥");
            order.setStartTime(sdf.parse("08:05"));
            order.setEndTime(sdf.parse("13:47"));
            order.setSeatType("商务座");
            order.setUserId(userId);
            order.setTrainNumber("G111");
            order.setOrderTime(new Date());
            order.setPrice(1748D);
        }

        if (trainId == 3) {
            order.setName("北京南 ————> 上海虹桥");
            order.setStartTime(sdf.parse("08:35"));
            order.setEndTime(sdf.parse("14:22"));
            order.setSeatType("二等座");
            order.setUserId(userId);
            order.setTrainNumber("G111");
            order.setOrderTime(new Date());
            order.setPrice(553D);
        }

        if (trainId == 4) {
            order.setName("北京南 ————> 上海虹桥");
            order.setStartTime(sdf.parse("08:35"));
            order.setEndTime(sdf.parse("14:22"));
            order.setSeatType("一等座");
            order.setUserId(userId);
            order.setTrainNumber("G111");
            order.setOrderTime(new Date());
            order.setPrice(933D);
        }

        if (trainId == 5) {
            order.setName("北京南 ————> 上海虹桥");
            order.setStartTime(sdf.parse("08:35"));
            order.setEndTime(sdf.parse("14:22"));
            order.setSeatType("商务座");
            order.setUserId(userId);
            order.setTrainNumber("G111");
            order.setOrderTime(new Date());
            order.setPrice(1748D);
        }

        order.setStatus(1);
        trainPreOrderService.save(order);
        restResponse.setIsSuccess(1);
        return restResponse;
    }

    /**
     * 获取酒店订单列表
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

        List<TrainPreOrder> orderList = trainPreOrderService.findTrainPreOrdersByUserId(userId);
        restResponse.setIsSuccess(1);
        restResponse.setData(orderList);
        return restResponse;
    }
}
