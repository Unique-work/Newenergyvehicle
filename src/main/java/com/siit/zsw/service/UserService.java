package com.siit.zsw.service;

import com.siit.zsw.pojo.User;

import java.util.List;

public interface UserService {
    List<User> list();
    int adduser(User user);
    int updataById(User u);
    User login(String username,String password);
    User selectUserByUser(String username);
    int updateHpic(String path,String id);
    //根据id获取信息
    public User getUserById(String userid);
}
