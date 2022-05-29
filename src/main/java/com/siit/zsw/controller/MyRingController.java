package com.siit.zsw.controller;// 直接赋值粘贴，删除CSDN的权限转载中文

import com.google.gson.Gson;
import com.siit.zsw.pojo.*;
import com.siit.zsw.service.CommentService;
import com.siit.zsw.service.ContentPraiseService;
import com.siit.zsw.service.ContentService;
import com.siit.zsw.service.impl.CarFriendServiceImpl;
import com.siit.zsw.service.impl.CarServiceImpl;
import com.siit.zsw.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: Newenergyvehicle
 * @description: myfing
 * @author: Mr.flying
 * @create: 2022-05-27 17:36
 **/

@Controller
public class MyRingController {
    @Autowired
    private CarFriendServiceImpl carfriendService;

    @Autowired
    private UserServiceImpl userService;

    @Autowired
    private CarServiceImpl carMessageService;
    @Autowired
    private ContentService contentService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private ContentPraiseService contentPraiseService;
    /**
     * 车友圈添加车友
     */
    @RequestMapping("/addcarfriend.do")
    public void addCarFriend(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException, ParseException {
        String carfname = req.getParameter("carfname");
        User user = userService.getUserByUsername(carfname);
        String result = "";
        if (user != null) {
            User us = (User) req.getSession().getAttribute("user");
            String userid = us.getId();
            String friendid = user.getId();
            String cartype = "";
            String carnumber = "";
            CarMessage cm = carMessageService.getCarMessageByUser(userid);
            if (cm != null) {
                cartype = cm.getCartype();
                carnumber = cm.getPlateNumber();
            }
            Map<String, String> map = new HashMap<String, String>();
            map.put("userid", userid);
            map.put("friendid", friendid);
            carfriend caf = carfriendService.getListByTId(map);
            if (caf != null) {
                result = new Gson().toJson("repeat");
            } else {
                carfriend carfriend = new carfriend();
                carfriend.setCarfname(carfname);
                carfriend.setUserid(userid);
                carfriend.setFriendid(friendid);
                carfriend.setCartype(cartype);
                carfriend.setCarnumber(carnumber);
                carfriendService.saveCarFriend(carfriend);
                result = new Gson().toJson(carfriend);
            }
        } else {
            result = new Gson().toJson("error");
        }
        String jsonp = req.getParameter("jsoncallback");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        if (jsonp != null) {
            result = jsonp + "(" + result + ")";
            resp.getWriter().write(result);
        } else {
            resp.getWriter().write(result);
        }
    }

    /* 保存车友圈发布信息 */
    @RequestMapping("/saveContent.do")
    public void saveContent(HttpServletRequest req, HttpServletResponse resp, ModelMap model, String txt) throws IOException, ServletException, ParseException {
        String result = java.net.URLDecoder.decode(txt, "UTF-8");
        Content content = new Content();
        content.setTxt(result);
        content.setReleasetime(new Date());
        User user = (User) req.getSession().getAttribute("user");
        String userid = user.getId();
        content.setUserid(userid);
        contentService.saveContent(content);
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write("energy/myring");
        resp.getWriter().flush();
        resp.getWriter().close();


    }

    @RequestMapping("/addpraise.do")
    public void addpraise(HttpServletRequest req,HttpServletResponse resp)
            throws IOException,ServletException, ParseException {
        int pid = Integer.parseInt(req.getParameter("pid"));
        Content praise = contentService.getContentById(pid);
        User user = (User)req.getSession().getAttribute("user");
        String userid = user.getId();
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("contentid", pid);
        map.put("userid", userid);
        ContentPraise cp = contentPraiseService.getContentPraiseByUserId(map);
        String result = "";
        if(cp!=null){
            result=new Gson().toJson("repeat");
        }else{
            int count = praise.getPraise();
            count++;
            praise.setPraise(count);
            ContentPraise contentpraise = new ContentPraise();
            contentpraise.setContentid(pid);
            contentpraise.setUserid(userid);
            contentPraiseService.saveContentPraise(contentpraise);
            contentService.updateContent(praise);
            result=new Gson().toJson(praise);
        }
        String jsonp = req.getParameter("jsoncallback");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        if(jsonp != null){
            result = jsonp+"("+result+")";
            resp.getWriter().write(result);
        }else{
            resp.getWriter().write(result);
        }
    }
    @RequestMapping("/sendcomment.do")
    public void sendcomment(HttpServletRequest req,HttpServletResponse resp)
            throws IOException,ServletException, ParseException {
        int cid = Integer.parseInt(req.getParameter("cid"));
        String text = req.getParameter("text");
        User user = (User)req.getSession().getAttribute("user");
        String userid = user.getId();
        Comment comment = new Comment();
        comment.setText(text);
        comment.setContentid(cid);
        comment.setTime(new Date());
        comment.setUserid(userid);
        User u = userService.getUserById(userid);
        String h = u.getHpic();
        String hpic = "\\"+"upload" + h.substring(h.lastIndexOf('\\'));
        commentService.saveComment(comment);
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("hpic", hpic);
        map.put("text",text);
        String result=new Gson().toJson(map);
        String jsonp = req.getParameter("jsoncallback");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        if(jsonp != null){
            result = jsonp+"("+result+")";
            resp.getWriter().write(result);
        }else{
            resp.getWriter().write(result);
        }
    }
    @RequestMapping("/addcomment.do")
    public void addcomment(HttpServletRequest req,HttpServletResponse resp)
            throws IOException,ServletException, ParseException {
        int cid = Integer.parseInt(req.getParameter("cid"));
        Content comment = contentService.getContentById(cid);
        int count = comment.getComments();
        count++;
        comment.setComments(count);
        contentService.updateContent(comment);
        String result=new Gson().toJson(comment);
        String jsonp = req.getParameter("jsoncallback");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        if(jsonp != null){
            result = jsonp+"("+result+")";
            resp.getWriter().write(result);
        }else{
            resp.getWriter().write(result);
        }
    }

}
