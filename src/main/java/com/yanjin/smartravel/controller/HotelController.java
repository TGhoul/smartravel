package com.yanjin.smartravel.controller;

import com.yanjin.smartravel.domain.HotelPreOrder;
import com.yanjin.smartravel.response.RestResponse;
import com.yanjin.smartravel.serivce.HotelPreOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * @author zpj
 * @date 2018/5/29
 */
@RestController
@RequestMapping("/smartravel/hotel")
public class HotelController {

    @Autowired
    private HotelPreOrderService hotelPreOrderService;

    /**
     * 预定酒店
     * @param hotelId 酒店id
     * @param session 会话
     * @return
     */
    @RequestMapping("/preorder")
    public RestResponse join(@RequestParam("hotelId") Long hotelId, HttpSession session) {
        HotelPreOrder order = new HotelPreOrder();
        RestResponse restResponse = new RestResponse();
        Long userId = (Long) session.getAttribute("userId");
        if (userId == null) {
            restResponse.setIsSuccess(0);
            restResponse.setErrmsg("请先登录！");
            return restResponse;
        }
        if (hotelId == null) {
            restResponse.setIsSuccess(0);
            restResponse.setErrmsg("缺少参数");
            return restResponse;
        }
        if (hotelId ==  1) {
            order.setHotelName("上海徐汇云瑞酒店");
            order.setAddress("上海");
            order.setCreateTime(new Date());
            order.setPrice(398D);
            order.setUserId(userId);
        }

        if (hotelId ==  2) {
            order.setHotelName("上海延安饭店");
            order.setAddress("上海");
            order.setCreateTime(new Date());
            order.setPrice(498D);
            order.setUserId(userId);
        }

        if (hotelId ==  3) {
            order.setHotelName("上海如果遇见你小墅");
            order.setAddress("上海");
            order.setCreateTime(new Date());
            order.setPrice(271D);
            order.setUserId(userId);
        }

        if (hotelId ==  4) {
            order.setHotelName("上海南泉大酒店");
            order.setAddress("上海");
            order.setCreateTime(new Date());
            order.setPrice(368D);
            order.setUserId(userId);
        }

        if (hotelId ==  5) {
            order.setHotelName("上海航空酒店（上海浦东机场店）");
            order.setAddress("上海");
            order.setCreateTime(new Date());
            order.setPrice(318D);
            order.setUserId(userId);
        }

        if (hotelId ==  6) {
            order.setHotelName("杭州蝶来望湖宾馆");
            order.setAddress("杭州");
            order.setCreateTime(new Date());
            order.setPrice(688D);
            order.setUserId(userId);
        }

        if (hotelId == 7) {
            order.setHotelName("浙江梅地亚宾馆");
            order.setAddress("杭州");
            order.setCreateTime(new Date());
            order.setPrice(999D);
            order.setUserId(userId);
        }

        if (hotelId == 8) {
            order.setHotelName("曼陀林·云谷花园客栈");
            order.setAddress("杭州");
            order.setCreateTime(new Date());
            order.setPrice(298D);
            order.setUserId(userId);
        }

        if (hotelId == 9) {
            order.setHotelName("杭州赫纳酒店");
            order.setAddress("杭州");
            order.setCreateTime(new Date());
            order.setPrice(318D);
            order.setUserId(userId);
        }

        if (hotelId ==  10) {
            order.setHotelName("杭州瑞莱克斯大酒店");
            order.setAddress("杭州");
            order.setCreateTime(new Date());
            order.setPrice(254D);
            order.setUserId(userId);
        }

        hotelPreOrderService.save(order);
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

        List<HotelPreOrder> orderList = hotelPreOrderService.findHotelPreOrdersByUserId(userId);
        restResponse.setIsSuccess(1);
        restResponse.setData(orderList);
        return restResponse;
    }

}
