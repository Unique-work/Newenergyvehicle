package com.siit.zsw.service;// 直接赋值粘贴，删除CSDN的权限转载中文

import com.siit.zsw.pojo.carfriend;

import java.util.List;
import java.util.Map;

/**
 * @program: Newenergyvehicle
 * @description: carfriendService
 * @author: Mr.flying
 * @create: 2022-05-27 17:40
 **/


public interface CarFriendService {
    public carfriend getListByTId(Map<String,String> map);

    public void saveCarFriend(carfriend carfriend);
    public List<carfriend> getFriendByUserId(String userid);
    public int getCount(String userid);

}
