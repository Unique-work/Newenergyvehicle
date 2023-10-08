package com.zsw.DHY.controller;

import com.sun.deploy.net.HttpResponse;
import com.zsw.DHY.pojo.TbUser;
import com.zsw.DHY.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-06-09 17:11
 **/

@Controller
public class UserController {
    @Autowired
    private UserServiceImpl userService;

    @RequestMapping("/login.do")
    @ResponseBody
    public Map<String, Object> login(String username, String password, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();//session只能通过request取得，不能new
        System.out.println("username:" + username);
        System.out.println("password:" + password);
        Map<String, Object> map = new HashMap<>(12);
        TbUser login = userService.login(username, password);
        if (login != null) {
            map.put("code", 200);
            session.setAttribute("user", login);//设置需要的参数（key-value）
            System.out.println("login");
        } else {

            map.put("code", 500);

        }
        return map;
    }

    @RequestMapping("/insertUser.do")
    @ResponseBody
    public Map<String, Object> insert(TbUser tbUser) {
        Map<String, Object> map = new HashMap<>();
        int insert = userService.insert(tbUser);
        if (insert > 0) {
            map.put("code", 200);
        } else {
            map.put("code", 500);
        }
        return map;
    }
}
