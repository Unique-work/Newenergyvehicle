package com.siit.zsw.controller;


import com.github.pagehelper.PageInfo;


import com.google.gson.Gson;
import com.siit.zsw.pojo.CarMessage;
import com.siit.zsw.pojo.User;
import com.siit.zsw.service.impl.CarServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class Carcontroller {
    @Autowired
    CarServiceImpl carService;
    @ResponseBody
    @RequestMapping("listCar.do")
    public List<CarMessage> list(){
        return carService.listAllCar();
    }
    @RequestMapping("listAllCar.do")
    public ModelAndView listAllCar(){
        List<CarMessage> carList = carService.listAllCar();
        System.out.println(carList);
        ModelAndView mv=new ModelAndView();
        mv.addObject("carlist",carList);
        mv.setViewName("Manage");
        return mv;
    }


    
//    @RequestMapping(value = "/listByPage.do" )
    public ModelAndView listByPage(HttpServletRequest request, HttpServletResponse response,
                                   @RequestParam(defaultValue = "1") int pageNum, @RequestParam(defaultValue = "5") int pageSize) {
        // 将汽车信息按照分页要求获取
        ModelAndView mv = new ModelAndView();

        PageInfo<CarMessage> pageInfo = carService.listBypage(pageNum, pageSize);
     //   ArrayList<User> userList = userService.listUserWithoutCar();

        mv.addObject("pageInfo", pageInfo);
     //   mv.addObject("userList", userList);

        mv.setViewName("Manage");
        return mv;
    }


    @GetMapping("addcar.do")
    @ResponseBody
    public  Map<String, Object> addCar(HttpServletRequest request,HttpServletResponse response ,CarMessage carMessage,ModelAndView mv) throws IOException {
        System.out.println(carMessage.getVehID());
        System.out.println("sddCar");

        Map<String, Object> result=new HashMap<>();
        int total_vehID = carService.queryNumberById(carMessage.getVehID());
        if (total_vehID>0){

        }else {
            int total_plateNumber = carService.queryNumberByPlateNumber(carMessage.getPlateNumber());
            if(total_plateNumber > 0) {

                System.out.println(1);
            }else {
                System.out.println(2);
              //  User user = (User) request.getSession().getAttribute("user");
              //  carMessage.setCreateId(user.getId());
                int save = carService.save(carMessage);
                System.out.println(save);
                if (save>0){
                    result.put("code",200);
                }else {
                    result.put("code",500);
                }
            }
        }
                return result;
    }

//    @RequestMapping(value = "detail.do")
    public void carDetail(HttpServletRequest request, HttpServletResponse response,String vehID, ModelMap model) throws IOException {
    }


//    @RequestMapping(value = "updateCar.do")
    public void updateCar(HttpServletRequest request, HttpServletResponse response, CarMessage carmessage,ModelMap model) throws IOException {
    }

@RequestMapping("deletecar.do")
@ResponseBody
    public  Map<String, Object> delete(String vehID){
        Map<String, Object> map=new HashMap<>();
        int delete = carService.delete(vehID);
        if (delete>0){
            map.put("code",200);

        }else {
            map.put("code",500);
            System.out.println();
        }
        return map;
    }
    @RequestMapping(value = "deleteBatch.do")
     @ResponseBody
    public Map<String, Object> deleteBatch(String checkIds){
        Map<String, Object> map=new HashMap<>();
        String[] checkIdArray=checkIds.split(",");
        System.out.println(checkIdArray[0]);
        int rs=carService.deleteBatch(checkIdArray);
        if (rs>0){
            map.put("code",200);
        }else {
            map.put("code",500);
        }
        return map;

    }
    public void deleteBatch2(String checkIds){
        System.out.println("deleteBatch");
        String[] checkIdArray=checkIds.split(",");
        System.out.println(checkIdArray.length);

    }
    @GetMapping("MyselfCenter.do")
    public void MyselfCenter(){
        System.out.println("MyselfCenter");
    }
    }
