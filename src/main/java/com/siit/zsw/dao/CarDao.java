package com.siit.zsw.dao;


import com.siit.zsw.pojo.CarMessage;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CarDao {
    List<CarMessage> list();
    int queryNumberById(String vehId);

    int queryNumberByPlateNumber(String plateNumber);

    int save(CarMessage carMessage);

    Map<String, Object> getCarMessageMapByVehID(String vehID);
    public CarMessage getCarMessageByUser(String userid);
    void updateCar(CarMessage carmessage);
    int deleteBatch(@Param("vehId") String[] vehId);
    int delete(String vehId);
}
