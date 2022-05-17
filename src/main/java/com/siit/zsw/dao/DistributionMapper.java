package com.siit.zsw.dao;

import com.siit.zsw.pojo.Distribution;

import java.util.List;

public interface DistributionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DistributionMapper record);

    int insertSelective(DistributionMapper record);

    DistributionMapper selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DistributionMapper record);

    int updateByPrimaryKey(DistributionMapper record);
    public List<Distribution> getDistribution();
    public List<Distribution> getCarDistri();

}