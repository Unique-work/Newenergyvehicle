package com.siit.zsw.dao;

import com.siit.zsw.pojo.FaultSolution;
import com.siit.zsw.pojo.FaultSolutionKey;

public interface FaultSolutionMapper {
    int deleteByPrimaryKey(FaultSolutionKey key);

    int insert(FaultSolution record);

    int insertSelective(FaultSolution record);

    FaultSolution selectByPrimaryKey(FaultSolutionKey key);

    int updateByPrimaryKeySelective(FaultSolution record);

    int updateByPrimaryKey(FaultSolution record);
    public FaultSolution getSolutionByFaultID(String faultID);
}