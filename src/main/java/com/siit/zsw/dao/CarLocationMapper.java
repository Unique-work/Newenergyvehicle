package com.siit.zsw.dao;

import com.siit.zsw.pojo.CarLocation;

public interface CarLocationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CarLocation record);

    int insertSelective(CarLocation record);

    CarLocation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CarLocation record);

    int updateByPrimaryKey(CarLocation record);
}