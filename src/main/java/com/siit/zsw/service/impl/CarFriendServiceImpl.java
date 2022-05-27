package com.siit.zsw.service.impl;// 直接赋值粘贴，删除CSDN的权限转载中文

import com.siit.zsw.dao.carfriendMapper;
import com.siit.zsw.pojo.carfriend;
import com.siit.zsw.service.CarFriendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-05-27 17:41
 **/

@Service
public class CarFriendServiceImpl implements CarFriendService {
    @Autowired
    private carfriendMapper carfriendMapper;
    @Override
    public carfriend getListByTId(Map<String, String> map) {
        return carfriendMapper.getListByTId(map);
    }

    @Override
    public void saveCarFriend(carfriend carfriend) {
        carfriendMapper.saveCarFriend(carfriend);

    }

    @Override
    public List<carfriend> getFriendByUserId(String userid) {
        return carfriendMapper.getFriendByUserId(userid);
    }

    @Override
    public int getCount(String userid) {
        return carfriendMapper.getCount(userid);
    }
}
