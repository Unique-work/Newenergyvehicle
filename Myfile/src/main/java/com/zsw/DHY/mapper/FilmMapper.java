package com.zsw.DHY.mapper;

import com.zsw.DHY.pojo.Tbfilm;

import java.util.ArrayList;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-06-10 16:19
 **/


public interface FilmMapper {
    ArrayList<Tbfilm> select();
    Tbfilm selectByName(String name);
    int insert(Tbfilm tbfilm);
     void deletet(String id);

}
