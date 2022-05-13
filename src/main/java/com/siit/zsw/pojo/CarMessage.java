package com.siit.zsw.pojo;

public class CarMessage {
    private Integer id;
    private  String vehID;
    private String plateNumber;
    private String brand;
    private String remarks;
    private String productdate;
    private Integer currentmileage;
    private String userid;
    private String createid;
    private String cartype;
    private int count;

    public CarMessage() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getVehID() {
        return vehID;
    }

    public void setVehID(String vehID) {
        this.vehID = vehID;
    }

    public String getPlateNumber() {
        return plateNumber;
    }

    public void setPlateNumber(String plateNumber) {
        this.plateNumber = plateNumber;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getProductdate() {
        return productdate;
    }

    public void setProductdate(String productdate) {
        this.productdate = productdate;
    }


    public Integer getCurrentmileage() {
        return currentmileage;
    }

    public void setCurrentmileage(Integer currentmileage) {
        this.currentmileage = currentmileage;
    }


    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }


    public String getCreateid() {
        return createid;
    }

    public void setCreateid(String createid) {
        this.createid = createid;
    }

    public String getCartype() {
        return cartype;
    }

    public void setCartype(String cartype) {
        this.cartype = cartype;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
