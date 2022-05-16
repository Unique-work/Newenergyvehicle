package com.siit.zsw.service.impl;

import com.siit.zsw.dao.CarLocationMapper;
import com.siit.zsw.pojo.CarLocation;
import com.siit.zsw.service.CarLocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CarLocationServiceImpl  implements CarLocationService {
    @Autowired
    private CarLocationMapper carLocationMapper;

    @Override
    public List<CarLocation> getCarMessageByVehID(String vehID) {
        return carLocationMapper.getCarMessageByVehID(vehID);
    }

    @Override
    public List<CarLocation> getFaultCarLocation(Map<String, Object> map) {
        return carLocationMapper.getFaultCarLocation(map);
    }

    @Override
    public List<CarLocation> getNormalCarLocation(Map<String, Object> map) {
        return carLocationMapper.getFaultCarLocation(map);
    }
}
