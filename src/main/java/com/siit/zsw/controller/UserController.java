package com.siit.zsw.controller;

import com.siit.zsw.pojo.*;
import com.siit.zsw.service.UserService;
import com.siit.zsw.service.impl.CarLocationServiceImpl;
import com.siit.zsw.service.impl.CarServiceImpl;
import com.siit.zsw.service.impl.FaultInfoServiceImpl;
import com.siit.zsw.service.impl.FaultSoltionServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.*;

@Controller
public class UserController {

    @Autowired
    UserService service;
    @Autowired
    private CarServiceImpl carMessageService;

    @Autowired
    private CarLocationServiceImpl carLocationService;

    @Autowired
    private FaultInfoServiceImpl faultInfoService;

    @Autowired
    private FaultSoltionServiceImpl faultSolutionService;

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
    @RequestMapping(value = "myselfcenter.do", method = RequestMethod.GET)
    public ModelAndView myselfcenter(HttpServletRequest request,
                                     HttpServletResponse response, ModelMap model) {
        User user = (User) request.getSession().getAttribute("user");
        String userid = "";
        String vehID = "";

        String fdj = "0"; //发动机
        String dc = "0"; //电池
        String sw = "0"; //水温
        String zczd = "0"; //驻车制动
        String jy = "0"; //机油
        String dp = "0"; //底盘
        String abs = "0"; //abs
        String park = "0"; //停车
        String light = "0"; //车灯
        String wheel = "0"; //车轮

        if (user != null) {
            userid = user.getId();
        }
        CarMessage cm = carMessageService.getCarMessageByUser(userid);
        if (cm != null) {
            vehID = cm.getVehID();
        }
        List<CarLocation> cl = carLocationService.getCarMessageByVehID(vehID);
        List<FaultInfo> fi = faultInfoService.getfaultinfoByVehID(vehID);
        ArrayList<FaultSolution> fs = new ArrayList<>();
        for (FaultInfo fl : fi) {
            if (fl.getFaultstate().equals("发动机")) {
                fdj = fl.getFaultid();
            }

            if (fl.getFaultstate().equals("电池")) {
                dc = fl.getFaultid();
            }

            if (fl.getFaultstate().equals("水温")) {
                sw = fl.getFaultid();
            }

            if (fl.getFaultstate().equals("驻车制动")) {
                zczd = fl.getFaultid();
            }

            if (fl.getFaultstate().equals("机油")) {
                jy = fl.getFaultid();
            }

            if (fl.getFaultstate().equals("底盘")) {
                dp = fl.getFaultid();
            }

            if (fl.getFaultstate().equals("abs")) {
                abs = fl.getFaultid();
            }

            if (fl.getFaultstate().equals("停车")) {
                park = fl.getFaultid();
            }

            if (fl.getFaultstate().equals("车轮")) {
                wheel = fl.getFaultid();
            }

            FaultSolution fsl = faultSolutionService.getSolutionByFaultID(fl.getFaultid());

            fs.add(fsl);
        }

        ModelAndView mv = new ModelAndView();
        mv.setViewName("MyselfCenter");
        mv.addObject("carmessage", cm);
        if (cl != null) {
            mv.addObject("carlocation", cl);
        }
        if (fi != null) {
            mv.addObject("fdj", fdj);
            mv.addObject("dc", dc);
            mv.addObject("sw", sw);
            mv.addObject("zczd", zczd);
            mv.addObject("jy", jy);
            mv.addObject("abs", abs);
            mv.addObject("dp", dp);
            mv.addObject("park", park);
            mv.addObject("light", light);
            mv.addObject("wheel", wheel);
        }
        mv.addObject("faultsolution", fs);
        return mv;
    }

}
