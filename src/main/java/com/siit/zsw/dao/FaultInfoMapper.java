package com.siit.zsw.dao;

import com.siit.zsw.pojo.FaultInfo;

import java.util.List;
import java.util.Map;

public interface FaultInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FaultInfo record);

    int insertSelective(FaultInfo record);

    FaultInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FaultInfo record);

    int updateByPrimaryKey(FaultInfo record);
    public List<FaultInfo> getfaultinfoByVehID(String vehID);
    public List<FaultInfo> getfaultcount(Map<String,Object> map);
    public List<FaultInfo> getfaultinfoBymodID(String modID);
}