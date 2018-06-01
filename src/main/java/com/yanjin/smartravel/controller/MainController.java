package com.yanjin.smartravel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * 主控制器
 * @author zpj
 * @date 2018/5/20
 */
@Controller
@RequestMapping("/smartravel")
public class MainController {

    /**
     * 首页
     * @return
     */
    @RequestMapping("/index")
    public String index(HttpSession session) {
        return "index";
    }

    /**
     * 15-25岁
     * @return
     */
    @RequestMapping("/10-25")
    public String ageRange() {
        return "10-25";
    }

    /**
     * 25-40岁
     * @return
     */
    @RequestMapping("/25-40")
    public String age() {
        return "25-40";
    }

    /**
     * 登录页
     * @return
     */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /**
     * 登录页
     * @return
     */
    @RequestMapping("/join")
    public String join() {
        return "zc";
    }

    /**
     * 旅游攻略
     * @return
     */
    @RequestMapping("/travel")
    public String travel() {
        return "travel";
    }

    /**
     * 火车预定
     * @return
     */
    @RequestMapping("/hc")
    public String hc() {
        return "hc";
    }

    /**
     * 酒店预定
     * @return
     */
    @RequestMapping("/jd")
    public String jd() {
        return "jd";
    }

    /**
     * 门票预定
     * @return
     */
    @RequestMapping("/dsn")
    public String dsn() {
        return "dsn";
    }

    /**
     * 火车预定
     * @return
     */
    @RequestMapping("/hcyd")
    public String hcyd() {
        return "hcyd";
    }

    /**
     * 首页入口
     * @return
     */
    @RequestMapping("/enter")
    public String enter() {
        return "enter";
    }

    /**
     * 我的入口
     * @return
     */
    @RequestMapping("/wd")
    public String wd() {
        return "wd";
    }

    /**
     * 管理员入口
     * @return
     */
    @RequestMapping("/admin")
    public String admin() {
        return "adminlogin";
    }

    /**
     * 管理员入口
     * @return
     */
    @RequestMapping("/admin/index")
    public String adminIndex() {
        return "admin";
    }

    /**
     * 管理员入口
     * @return
     */
    @RequestMapping("/stln")
    public String stln() {
        return "stln";
    }
}
