package com.siit.zsw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
    @GetMapping("MyselfCenter.jsp")
    public String center_To(){
        return "MyselfCenter";
    }
//    @GetMapping("Carposition.do")
    public String Carposition_To(){
        return "Carposition";
    }
    @RequestMapping("map.do")
    public String map_To(){
        return "Map";
    }
}
