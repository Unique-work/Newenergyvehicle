package com.siit.zsw.dao;

import com.siit.zsw.pojo.CarLocation;

import java.util.List;
import java.util.Map;

public interface CarLocationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CarLocation record);

    int insertSelective(CarLocation record);

    CarLocation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CarLocation record);

    int updateByPrimaryKey(CarLocation record);
    public List<CarLocation> getCarMessageByVehID(String vehID);
    public List<CarLocation> getFaultCarLocation(Map<String,Object> map);
    public List<CarLocation> getNormalCarLocation(Map<String,Object> map);

}