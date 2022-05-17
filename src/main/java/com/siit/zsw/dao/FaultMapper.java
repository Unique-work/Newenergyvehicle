package com.siit.zsw.dao;

import com.siit.zsw.pojo.Fault;

import java.util.List;

public interface FaultMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Fault record);

    int insertSelective(Fault record);

    Fault selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Fault record);

    int updateByPrimaryKey(Fault record);
    public List<Fault> getFault();
    public List<Fault> getListById(int id);
    public int getCountBydid(int distributionid);

}