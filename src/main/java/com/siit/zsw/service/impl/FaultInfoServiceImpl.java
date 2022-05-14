package com.siit.zsw.service.impl;

import com.siit.zsw.dao.FaultInfoMapper;
import com.siit.zsw.pojo.FaultInfo;
import com.siit.zsw.service.FaultInfoService;
import com.siit.zsw.service.FaultSoltionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FaultInfoServiceImpl implements FaultInfoService {
    @Autowired
    FaultInfoMapper faultInfoMapper;
    @Override
    public List<FaultInfo> getfaultinfoByVehID(String vehID) {
        return faultInfoMapper.getfaultinfoByVehID(vehID);
    }
}
