package com.clp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 在template目录下的所有页面，只能通过controller来跳转
 * 这个需要模板引擎的支持：thymeleaf
 */
@Controller
public class IndexController {

    @RequestMapping("/index")
    public String toIndex(){
        return "index";
    }
}
