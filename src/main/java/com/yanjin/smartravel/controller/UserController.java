package com.yanjin.smartravel.controller;

import com.google.common.base.Strings;
import com.yanjin.smartravel.domain.HotelPreOrder;
import com.yanjin.smartravel.domain.ScenicPreOrder;
import com.yanjin.smartravel.domain.TrainPreOrder;
import com.yanjin.smartravel.domain.User;
import com.yanjin.smartravel.response.RestResponse;
import com.yanjin.smartravel.serivce.HotelPreOrderService;
import com.yanjin.smartravel.serivce.ScenicPreOrderService;
import com.yanjin.smartravel.serivce.TrainPreOrderService;
import com.yanjin.smartravel.serivce.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

/**
 * 用户控制器
 * @author zpj
 * @date 2018/5/20
 */
@RestController
@RequestMapping("/smartravel")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private HotelPreOrderService hotelPreOrderService;
    @Autowired
    private ScenicPreOrderService scenicPreOrderService;
    @Autowired
    private TrainPreOrderService trainPreOrderService;

    /**
     * 用户注册接口
     * @param username 用户注册信息
     * @param password 用户注册信息
     * @return
     */
    @PostMapping("/join")
    public RestResponse join(@RequestParam("username") String username , @RequestParam("password") String password,
                             @RequestParam("rePassword") String rePassword) {
        RestResponse restResponse = new RestResponse();
        if (Strings.isNullOrEmpty(username) ||
                Strings.isNullOrEmpty(password) ||
                Strings.isNullOrEmpty(rePassword)) {
            restResponse.setIsSuccess(0);
            restResponse.setErrcode("u100");
            restResponse.setErrmsg("用户名或密码为空");
            return restResponse;
        }
        User joinUser = userService.findUserByUsername(username);
        if (joinUser != null) {
            restResponse.setIsSuccess(0);
            restResponse.setErrcode("u100");
            restResponse.setErrmsg("用户名已存在，请更换注册用户名");
            return restResponse;
        }
        if (!password.equalsIgnoreCase(rePassword)) {
            restResponse.setIsSuccess(0);
            restResponse.setErrcode("u100");
            restResponse.setErrmsg("两次密码输入不一致！");
            return restResponse;
        }
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setGender(1);
        restResponse.setIsSuccess(1);
        userService.save(user);
        return restResponse;
    }

    /**
     * 用户登录接口
     * @param username 用户登录信息
     * @param password 用户登录信息
     * @return
     */
    @PostMapping("/signin")
    public RestResponse signin(@RequestParam("username") String username , @RequestParam("password") String password,
                               HttpSession session) {
        RestResponse restResponse = new RestResponse();

        if (Strings.isNullOrEmpty(username) ||
                Strings.isNullOrEmpty(password)) {
            restResponse.setIsSuccess(0);
            restResponse.setErrcode("u100");
            restResponse.setErrmsg("用户名或密码为空");
            return restResponse;
        }

        Optional<User> opUser = Optional.of(userService.findUserByUsername(username));
        if (!opUser.isPresent()) {
            restResponse.setIsSuccess(0);
            restResponse.setErrcode("u102");
            restResponse.setErrmsg("用户不存在");
            return restResponse;
        }

        User loginUser = opUser.get();
        if (!loginUser.getPassword().equals(password)) {
            restResponse.setIsSuccess(0);
            restResponse.setErrcode("u103");
            restResponse.setErrmsg("密码错误");
            return restResponse;
        }
        if ("admin".equalsIgnoreCase(loginUser.getUsername())) {
            restResponse.setIsSuccess(0);
            restResponse.setErrcode("u103");
            restResponse.setErrmsg("无权限");
            return restResponse;
        }

        restResponse.setIsSuccess(1);
        session.setAttribute("userId", loginUser.getId());
        session.setAttribute("username", loginUser.getUsername());
        return restResponse;
    }

    /**
     * 管理员登录
     * @param username 用户名
     * @param password 密码
     * @return
     */
    @PostMapping("/admin/login")
    public RestResponse login(@RequestParam("username") String username ,
                               @RequestParam("password") String password) {
        RestResponse restResponse = new RestResponse();

        if (Strings.isNullOrEmpty(username) ||
                Strings.isNullOrEmpty(password)) {
            restResponse.setErrcode("u100");
            restResponse.setErrmsg("用户名或密码为空");
            restResponse.setIsSuccess(0);
            return restResponse;
        }
        User admin = userService.findUserByUsername(username);
        if (!admin.getPassword().equals(password)) {
            restResponse.setErrcode("u103");
            restResponse.setIsSuccess(0);
            restResponse.setErrmsg("密码错误");
            return restResponse;
        }

        restResponse.setIsSuccess(1);
        return restResponse;
    }

    /**
     * 退款
     * @param type 类型
     * @param orderId 订单ID
     * @return
     */
    @PostMapping("/order/refund")
    public RestResponse refund(@RequestParam("type") Integer type ,
                               @RequestParam("orderId") Long orderId) {
        RestResponse restResponse = new RestResponse();
        restResponse.setIsSuccess(0);
        // 酒店
        if (type == 1) {
            HotelPreOrder order = hotelPreOrderService.getOne(orderId);
            if (order != null) {
                order.setStatus(2);
                hotelPreOrderService.save(order);
                restResponse.setIsSuccess(1);
            }
        }

        //旅游
        if (type == 2) {
            ScenicPreOrder order = scenicPreOrderService.getOne(orderId);
            if (order != null) {
                order.setStatus(2);
                scenicPreOrderService.save(order);
                restResponse.setIsSuccess(1);
            }
        }

        //火车
        if (type == 3) {
            TrainPreOrder order = trainPreOrderService.getOne(orderId);
            if (order != null) {
                order.setStatus(2);
                trainPreOrderService.save(order);
                restResponse.setIsSuccess(1);
            }
        }

        return restResponse;
    }

    @PostMapping("/admin/review/order")
    public RestResponse review(@RequestParam("type") Integer type ,
                               @RequestParam("orderId") Long orderId) {
        RestResponse restResponse = new RestResponse();
        restResponse.setIsSuccess(0);

        if (type == 1) {
            HotelPreOrder order = hotelPreOrderService.getOne(orderId);
            if (order != null) {
                order.setStatus(3);
                hotelPreOrderService.save(order);
                restResponse.setIsSuccess(1);
            }
        }

        //火车
        if (type == 3) {
            TrainPreOrder order = trainPreOrderService.getOne(orderId);
            if (order != null) {
                order.setStatus(3);
                trainPreOrderService.save(order);
                restResponse.setIsSuccess(1);
            }
        }

        if (type == 2) {
            ScenicPreOrder order = scenicPreOrderService.getOne(orderId);
            if (order != null) {
                order.setStatus(3);
                scenicPreOrderService.save(order);
                restResponse.setIsSuccess(1);
            }
        }
        return restResponse;
    }

    @RequestMapping("/admin/order/list")
    public RestResponse list() {
        RestResponse restResponse = new RestResponse();
        Map<String, Object> map = new HashMap<>(10);
        map.put("hotel", hotelPreOrderService.findAllOrderById());
        map.put("scenic", scenicPreOrderService.findAllOrderById());
        map.put("train", trainPreOrderService.findAllOrderById());
        restResponse.setIsSuccess(1);
        restResponse.setData(map);
        return restResponse;
    }
}
