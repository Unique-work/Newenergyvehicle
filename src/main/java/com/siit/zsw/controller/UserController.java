package com.siit.zsw.controller;

import com.siit.zsw.pojo.User;
import com.siit.zsw.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class UserController {

    @Autowired
    UserService service;
    //Post
    @RequestMapping("list.do")
    @ResponseBody
    public List<User> list(){
        System.out.println("list.do");
        List<User> list = service.list();

        return list;
    }
    //POST
    @PostMapping("login.do")
    @ResponseBody
    public User login(String username, String password,HttpSession session){
        Map<String, Object> map=new HashMap<>();
        User login = service.login(username, password);
        session.setAttribute("user",login);


        return login;
    }
    @GetMapping("logout.do")
    public String logout(String id,HttpSession session,
                       HttpServletRequest request){


        session.removeAttribute("user");
        System.out.println(id);
        return "redirect:index.do";
    }

    //post
    @RequestMapping("adduser.do")
    @ResponseBody
    public Map<String, Object> adduser(User user,HttpSession session){
        UUID uuid=UUID.randomUUID();
        user.setId(uuid.toString());
        System.out.println(user.toString());
        int i = service.adduser(user);
        Map<String, Object> result = new HashMap<>();
        if (i>0){
            result.put("code",200);
        }else {
            result.put("code",500);
        }
        return result ;
    }

    //post
    @RequestMapping("select.do")
    @ResponseBody
    public User select(String username){
        User user = service.selectUserByUser(username);
        return user;
    }
    @RequestMapping("upload.do")
    @ResponseBody
    public void adduploadLink(@RequestParam("fileToUploadLink") MultipartFile photo, HttpSession session, HttpServletRequest request) throws ServletException, IOException {
//TODO 写法 不完美需要改进
        String username = request.getParameter("username");
        User user = service.selectUserByUser(username);

        //判断用户是否上传了文件
        if(!photo.isEmpty()) {
            //文件上传的地址
            String realPath = session.getServletContext().getRealPath("/upload");
            //获取文件的名称

            final String fileName = photo.getOriginalFilename();
            //限制文件上传的类型
            String contentType = photo.getContentType();
            String realName=user.getId().toString();
            String sux = fileName.substring(fileName.lastIndexOf("."));
            String path="C:\\Users\\张世文\\Desktop\\test\\"+realName + "." + sux;
            File file=new File(path);
            photo.transferTo(file);
            int i = service.updateHpic(path, user.getId());
            if (i<0){
                System.out.println("fail");
            }

            System.out.println(fileName + "." + contentType);
        }

    }
    @GetMapping("updata.do")
 public void updata(){
     System.out.println("updata.do");
 }

}
