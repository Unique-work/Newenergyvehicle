package com.zsw.DHY.service;

import com.zsw.DHY.pojo.TbUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-06-09 16:58
 **/



public interface Userservice {
    TbUser login( String username,String password);
    int insert(TbUser tbUser);
}
