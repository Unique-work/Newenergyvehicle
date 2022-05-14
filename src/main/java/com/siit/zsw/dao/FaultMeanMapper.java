package com.siit.zsw.dao;

import com.siit.zsw.pojo.FaultMean;

public interface FaultMeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FaultMean record);

    int insertSelective(FaultMean record);

    FaultMean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FaultMean record);

    int updateByPrimaryKey(FaultMean record);
}