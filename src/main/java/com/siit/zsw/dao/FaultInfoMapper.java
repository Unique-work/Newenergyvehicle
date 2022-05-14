package com.siit.zsw.dao;

import com.siit.zsw.pojo.FaultInfo;

public interface FaultInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FaultInfo record);

    int insertSelective(FaultInfo record);

    FaultInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FaultInfo record);

    int updateByPrimaryKey(FaultInfo record);
}