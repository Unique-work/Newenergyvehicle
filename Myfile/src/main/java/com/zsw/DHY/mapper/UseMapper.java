package com.zsw.DHY.mapper;

import com.zsw.DHY.pojo.TbUser;
import org.apache.ibatis.annotations.Param;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-06-09 16:53
 **/


public interface UseMapper {
    TbUser login(@Param("username") String username, @Param("password") String password);
    int insert(TbUser tbUser);
}
