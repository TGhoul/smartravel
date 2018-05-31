package com.yanjin.smartravel.controller;

import com.google.common.base.Strings;
import com.yanjin.smartravel.domain.User;
import com.yanjin.smartravel.response.RestResponse;
import com.yanjin.smartravel.serivce.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
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

    /**
     * 用户注册接口
     * @param username 用户注册信息
     * @param password 用户注册信息
     * @return
     */
    @PostMapping("/join")
    public RestResponse join(@RequestParam("username") String username ,@RequestParam("password") String password,
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
    public RestResponse signin(@RequestParam("username") String username ,@RequestParam("password") String password, HttpSession session) {
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

        restResponse.setIsSuccess(1);
        session.setAttribute("userId", loginUser.getId());
        session.setAttribute("username", loginUser.getUsername());
        return restResponse;
    }
}
