package com.siit.zsw.dao;

import com.siit.zsw.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    List<User> list();
    int addUser(User user);
    int deleteById(int id);
    int updataById(User user);
    User selectUserByUser(String username);
  User login(@Param("username") String username,@Param("password") String password);
    int updateHpic(@Param("path") String path, @Param("id") String id);
    //根据id获取信息
    public User getUserById(String userid);
    //根据用户名获取客户信息
    public User getUserByUsername(String username);
}


