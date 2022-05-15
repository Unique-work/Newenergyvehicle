package com.siit.zsw.controller;

import com.siit.zsw.pojo.FaultInfo;
import com.siit.zsw.service.CarLocationService;
import com.siit.zsw.service.FaultInfoService;
import com.siit.zsw.service.impl.CarLocationServiceImpl;
import com.siit.zsw.service.impl.FaultSoltionServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class IndexController {

    @Autowired
    private FaultInfoService faultInfoService;
    @Autowired
    private CarLocationServiceImpl carLocationService;

    @Autowired
    private FaultSoltionServiceImpl faultSolutionService;


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

    @RequestMapping(value = "/Carposition.do", method = RequestMethod.GET)
    public ModelAndView carposition(HttpServletRequest request,
                                    HttpServletResponse response, ModelMap model) {
        Map<String,Object> map = new HashMap<String,Object>();
        List<FaultInfo> fau = faultInfoService.getfaultcount(map);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Carposition");
        mv.addObject("fau",fau);
        return mv;
    }




}
