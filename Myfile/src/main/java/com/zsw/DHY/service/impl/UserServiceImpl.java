package com.zsw.DHY.service.impl;

import com.zsw.DHY.mapper.UseMapper;
import com.zsw.DHY.pojo.TbUser;
import com.zsw.DHY.service.Userservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-06-09 17:00
 **/

@Service
public class UserServiceImpl  implements Userservice {
    @Autowired
    private UseMapper useMapper;
    @Override
    public TbUser login(String username, String password) {
        return useMapper.login(username,password);
    }

    @Override
    public int insert(TbUser tbUser) {
        return useMapper.insert(tbUser);
    }
}
