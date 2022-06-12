package com.zsw.DHY.service.impl;

import com.zsw.DHY.mapper.FilmMapper;
import com.zsw.DHY.pojo.Tbfilm;
import com.zsw.DHY.service.Filmservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-06-10 16:30
 **/

@Service
public class FilmServiceImpl implements Filmservice {
    @Autowired
    FilmMapper filmMapper;
    @Override
    public ArrayList<Tbfilm> select() {
        return filmMapper.select();
    }

    @Override
    public Tbfilm selectByName(String name) {
        return filmMapper.selectByName(name);
    }

    @Override
    public int insert(Tbfilm tbfilm) {
        int insert = filmMapper.insert(tbfilm);
        return insert;
    }

    @Override
    public void deletet(String id) {
        System.out.println("1 id"+id);
        filmMapper.deletet(id);
    }
}
