package com.siit.zsw.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.siit.zsw.dao.CarDao;
import com.siit.zsw.pojo.CarMessage;
import com.siit.zsw.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CarServiceImpl implements CarService {
    @Autowired
    CarDao carDao;

    @Override
    public List<CarMessage> listAllCar() {
        return carDao.list();
    }

    @Override
    public int queryNumberById(String vehId) {
        return carDao.queryNumberById(vehId);
    }

    @Override
    public int queryNumberByPlateNumber(String plateNumber) {
        return carDao.queryNumberByPlateNumber(plateNumber);
    }

    @Override
    public int save(CarMessage carMessage) {
        return carDao.save(carMessage);
    }

    @Override
    public Map<String, Object> getCarMessageMapByVehID(String vehID) {
        return null;
    }

    @Override
    public void updateCar(CarMessage carmessage) {
        carDao.updateCar(carmessage);

    }

    @Override
    public int deleteBatch(String[] vehId) {
        return carDao.deleteBatch(vehId);
    }

    @Override
    public int delete(String vehId) {
        return carDao.delete(vehId);
    }

    @Override
    public CarMessage getCarMessageByUser(String userid) {
        return carDao.getCarMessageByUser(userid);
    }

    @Override
    public void deleteByUserid(String userId) {
        carDao.deleteByUserid(userId);
    }

    public PageInfo<CarMessage> listBypage(int pageNum, int pageSize) {
        //pageNum要显示的第几页，pageSize每页显示几条
        PageHelper.startPage(pageNum, pageSize);
        List<CarMessage> carMessageList=  carDao.list();
        PageInfo<CarMessage> pageInfo=new PageInfo<CarMessage>(carMessageList);
        return pageInfo;
    }
}
