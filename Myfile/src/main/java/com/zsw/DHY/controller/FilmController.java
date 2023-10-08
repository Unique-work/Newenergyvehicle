package com.zsw.DHY.controller;

import com.zsw.DHY.pojo.Tbfilm;
import com.zsw.DHY.service.impl.FilmServiceImpl;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-06-10 17:12
 **/

@Controller
public class FilmController {
    @Autowired
    private FilmServiceImpl filmService;

    @RequestMapping("show.do")
    public ModelAndView show() {
        ModelAndView mv = new ModelAndView();
        ArrayList<Tbfilm> film = filmService.select();
        for (Tbfilm tbfilm : film) {
            System.out.println(tbfilm.toString());
        }
        System.out.println("show");
        mv.addObject("film", film);
        mv.setViewName("Example copy 2");
        return mv;
    }

    @RequestMapping("insert.do")
    @ResponseBody
    public Map<String, Object> inster(Tbfilm tbfilm) {
        Map<String, Object> map = new HashMap<>();
        int insert = filmService.insert(tbfilm);
        if (insert > 0) {
            map.put("code", 200);
        } else {
            map.put("code", 500);

        }
        return map;
    }
    @RequestMapping("deletetfilm.do")
    @ResponseBody
    public void  deletet(@Param("id") String id){
        System.out.println("id  :"+id);
        filmService.deletet(id);
    }
}
