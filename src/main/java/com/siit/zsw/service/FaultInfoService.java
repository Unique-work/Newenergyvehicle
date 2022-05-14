package com.siit.zsw.service;

import com.siit.zsw.pojo.FaultInfo;

import java.util.List;

public interface FaultInfoService {
    public List<FaultInfo> getfaultinfoByVehID(String vehID);
}
