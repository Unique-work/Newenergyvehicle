package com.siit.zsw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class pageTo {
    //    @RequestMapping("listAll.do")
    public String list_to() {
        return "companycenter";

    }

    @RequestMapping("Manage.do")
    public ModelAndView Manage_to() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Manage");
        return mv;
//
    }
//    @RequestMapping("MyselfCenter.do")
    public String center_To(){
        return "MyselfCenter";
    }
}
