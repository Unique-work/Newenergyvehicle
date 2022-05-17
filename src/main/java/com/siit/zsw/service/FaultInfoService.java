package com.siit.zsw.service;

import com.siit.zsw.pojo.FaultInfo;

import java.util.List;
import java.util.Map;

public interface FaultInfoService {
    public List<FaultInfo> getfaultinfoByVehID(String vehID);
    public List<FaultInfo> getfaultcount(Map<String,Object> map);
    public List<FaultInfo> getfaultinfoBymodID(String modID);
}
