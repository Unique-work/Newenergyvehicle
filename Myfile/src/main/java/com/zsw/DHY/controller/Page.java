package com.zsw.DHY.controller;

import io.swagger.annotations.Api;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-06-10 15:40
 **/

@Controller
public class Page {

    @RequestMapping("page1.do")
    public String page1(){
        return "huxsfilm";
    }
    @RequestMapping("page2.do")
    public String page2(){
        return "Example copy";
    }
    @RequestMapping("page3.do")
    public String page3(){
        return "Example copy 2";
    }
    @RequestMapping("page4.do")
    public String page4(){
        return "Example copy 3";
    }
    @RequestMapping("Example.do")
    public String Example(){
        return "Example";
    }

}
