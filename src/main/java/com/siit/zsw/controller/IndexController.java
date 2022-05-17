package com.siit.zsw.controller;

import com.google.gson.Gson;
import com.siit.zsw.pojo.*;
import com.siit.zsw.service.CarLocationService;
import com.siit.zsw.service.ChartService;
import com.siit.zsw.service.FaultInfoService;
import com.siit.zsw.service.impl.CarLocationServiceImpl;
import com.siit.zsw.service.impl.CarServiceImpl;
import com.siit.zsw.service.impl.FaultSoltionServiceImpl;
import com.siit.zsw.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class IndexController {
    @Autowired
    private UserServiceImpl userService;

    @Autowired
    private CarServiceImpl carMessageService;
    @Autowired
    private FaultInfoService faultInfoService;
    @Autowired
    private CarLocationServiceImpl carLocationService;

    @Autowired
    private FaultSoltionServiceImpl faultSolutionService;

    @Autowired
    private ChartService chartService;
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
    @RequestMapping(value = "index.do", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request,
                              HttpServletResponse response, ModelMap model) {
        List<Distribution> distribution = chartService.getDistribution();
        ModelAndView mv = new ModelAndView();
        mv.addObject("distribution",distribution);
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "/Carposition.do", method = RequestMethod.GET)
    public ModelAndView carposition(HttpServletRequest request,
                                    HttpServletResponse response, ModelMap model) {
        Map<String,Object> map = new HashMap<String,Object>();
        List<FaultInfo> fau = faultInfoService.getfaultcount(map);
        List<Distribution> dis = chartService.getDistribution();
        List<Fault> fal = chartService.getFault();

        ModelAndView mv = new ModelAndView();
        System.out.println("Carposition.do");
        mv.setViewName("Carposition");
        mv.addObject("fau",fau);
        mv.addObject("dis",dis);
        mv.addObject("fal",fal);

        return mv;
    }

    @RequestMapping(value = "getfaultlocation.do")
    public void getFaultLocation(HttpServletRequest req,HttpServletResponse resp)
            throws IOException,ServletException, ParseException {
        System.out.println("getfaultlocation.do");
        String province = req.getParameter("province");  	//省份
        String cars = req.getParameter("carstatus"); 			//车况
        String startTime = req.getParameter("startTime");  	//时间
        String endTime = req.getParameter("endTime");
        int carstatus = 0;
        if(cars!=null){
            carstatus = Integer.parseInt(cars);
        }
        if("全国".equals(province)) {
            province = null;
        }
        Map<String,Object> mapin = new HashMap<String,Object>();
        List<CarLocation> faultlocation = null;
        List<CarLocation> normallocation = null;
        List<FaultInfo> fau = null;
        mapin.put("province", province);
        mapin.put("startTime", startTime);
        mapin.put("endTime", endTime);
        if(carstatus!=0&&carstatus!=1){
            mapin.put("carstatus", carstatus);
            faultlocation = carLocationService.getFaultCarLocation(mapin);
            fau = faultInfoService.getfaultcount(mapin);
            System.out.println(fau.toString());
        }else if(carstatus==0){
            mapin.put("carstatus", "");
            faultlocation = carLocationService.getFaultCarLocation(mapin);
            normallocation = carLocationService.getNormalCarLocation(mapin);
            fau = faultInfoService.getfaultcount(mapin);
            System.out.println(fau.toString());
        }else if(carstatus==1){
            mapin.put("carstatus", 1);
            normallocation = carLocationService.getNormalCarLocation(mapin);
            System.out.println(normallocation.toString());
        }
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("faultlocation", faultlocation);
        map.put("normallocation", normallocation);
        map.put("fau", fau);
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

    @RequestMapping(value = "/carinformation.do/{vehID}", method = RequestMethod.GET)
    public ModelAndView carinformation(HttpServletRequest request,
                                       HttpServletResponse response, ModelMap model,@PathVariable String vehID) throws UnsupportedEncodingException {
        String vid = URLDecoder.decode(vehID,"UTF-8");
        System.out.println(vehID);
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
        CarMessage cm = carMessageService.getCarMessageByVehID(vid);
        List<CarLocation> cl = carLocationService.getCarMessageByVehID(vid);
        List<FaultInfo> fi = faultInfoService.getfaultinfoByVehID(vid);
        ArrayList<FaultSolution> fs = new ArrayList<>();
        User user = userService.getUserById(cm.getUserid());
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
        mv.addObject("carmessage", cm);
        mv.addObject("username", user.getUsername());
        //mv.addObject("userid", user.getId());
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
        mv.setViewName("CarInformation");

        return mv;
    }
    @RequestMapping(value = "/fault/{type}", method = RequestMethod.GET)
    public ModelAndView fault(HttpServletRequest request,
                              HttpServletResponse response, ModelMap model,@PathVariable String type) {
        List<FaultInfo> faultinfo = faultInfoService.getfaultinfoBymodID(type);
        ModelAndView mv = new ModelAndView("fault","faultinfolist",faultinfo);
        return mv;
    }

    @RequestMapping( "getfault.do")
    public void getFault(HttpServletRequest req,HttpServletResponse resp)
            throws IOException,ServletException, ParseException {
        int distributionid = Integer.parseInt(req.getParameter("id"));
        List<Fault> fault = chartService.getListById(distributionid);
        int faultcount = 0;
        for (Fault f : fault) {
            faultcount += f.getCount();
        }
        int total = chartService.getCountBydid(distributionid);
        int normalcount = total - faultcount;
        if(normalcount != 0){
            Fault norf = new Fault();
            norf.setCount(normalcount);
            norf.setFaultname("正常使用");
            fault.add(norf);
        }
        String result=new Gson().toJson(fault);
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
    @RequestMapping("getcartype.do")
    public void getCarType(HttpServletRequest req,HttpServletResponse resp)
            throws IOException,ServletException, ParseException {
        int distributionid = Integer.parseInt(req.getParameter("id"));
        List<CarMessage> carm = carMessageService.getCarDistri(distributionid);
        String result=new Gson().toJson(carm);
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
