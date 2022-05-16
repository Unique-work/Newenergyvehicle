package com.siit.zsw.service;

import com.siit.zsw.pojo.CarLocation;

import java.util.List;
import java.util.Map;

public interface CarLocationService {
    public List<CarLocation> getCarMessageByVehID(String vehID);
    public List<CarLocation> getFaultCarLocation(Map<String,Object> map);
    public List<CarLocation> getNormalCarLocation(Map<String,Object> map);
}
