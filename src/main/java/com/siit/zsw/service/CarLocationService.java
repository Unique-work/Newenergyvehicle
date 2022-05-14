package com.siit.zsw.service;

import com.siit.zsw.pojo.CarLocation;

import java.util.List;

public interface CarLocationService {
    public List<CarLocation> getCarMessageByVehID(String vehID);
}
