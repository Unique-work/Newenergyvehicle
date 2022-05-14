package com.siit.zsw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class IndexController {



    @RequestMapping("index.do")
    public String indexto(){
        System.out.println("index");
        return "index";
    }
    @GetMapping("login")
    public String toLogin(){
        System.out.println("login");
        return "login";
    }
    @GetMapping("Regist.do")
    public String toRegist(){
        System.out.println("Regist");
        return "Regist";
    }
    @GetMapping("Accset.do")
    public String toAccset(){
        System.out.println("Accset");
        return "Accset";
    }





}
