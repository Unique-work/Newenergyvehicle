package com.zsw.DHY.service;

import com.zsw.DHY.pojo.Tbfilm;

import java.util.ArrayList;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-06-10 16:28
 **/


public interface Filmservice {
    ArrayList<Tbfilm> select();
    Tbfilm selectByName(String name);
    int insert(Tbfilm tbfilm);
    void deletet(String id);
}
