package com.siit.zsw.service.impl;

import com.siit.zsw.dao.FaultInfoMapper;
import com.siit.zsw.pojo.FaultInfo;
import com.siit.zsw.service.FaultInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class FaultInfoServiceImpl implements FaultInfoService {
    @Autowired
    FaultInfoMapper faultInfoMapper;
    @Override
    public List<FaultInfo> getfaultinfoByVehID(String vehID) {
        return faultInfoMapper.getfaultinfoByVehID(vehID);
    }

    @Override
    public List<FaultInfo> getfaultcount(Map<String, Object> map) {
        return faultInfoMapper.getfaultcount(map);
    }

    @Override
    public List<FaultInfo> getfaultinfoBymodID(String modID) {
        return faultInfoMapper.getfaultinfoBymodID(modID);
    }
}
