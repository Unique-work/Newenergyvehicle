package com.siit.zsw.service.impl;

import com.siit.zsw.pojo.User;
import com.siit.zsw.dao.UserDao;
import com.siit.zsw.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;
    @Override
    public List<User> list() {
        return userDao.list();
    }

    @Override
    public int adduser(User user) {
        return userDao.addUser(user);
    }

    @Override
    public int updataById(User u) {
        return userDao.updataById(u);
    }

    @Override
    public User login(String username, String password) {
        return userDao.login(username,password);
    }

    @Override
    public User selectUserByUser(String username) {
        return userDao.selectUserByUser(username);
    }

    @Override
    public int updateHpic( String path,String id) {
        return userDao.updateHpic(path,id);
    }


}
