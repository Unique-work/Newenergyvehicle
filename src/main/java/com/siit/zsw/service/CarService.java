package com.siit.zsw.service;



import com.siit.zsw.pojo.CarMessage;

import java.util.List;
import java.util.Map;

public interface CarService {
    List<CarMessage> listAllCar();
    int queryNumberById(String vehId);

    int queryNumberByPlateNumber(String plateNumber);

    int save(CarMessage carMessage);

    Map<String, Object> getCarMessageMapByVehID(String vehID);

    void updateCar(CarMessage carmessage);
//    PageInfo<Car> listBypage(int pageNum,int pageSize );
int deleteBatch(String[] vehId);
    int delete(String vehId);
    public CarMessage getCarMessageByUser(String userid);
}
