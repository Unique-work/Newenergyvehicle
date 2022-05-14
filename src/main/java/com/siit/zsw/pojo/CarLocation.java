package com.siit.zsw.pojo;

import java.util.Date;
public class CarLocation {
    private Integer id;
    private String vehID;
    private String modID;
    private String realtime;
    private String latitudes;
    private String longitudes;
    private String remarks;
    private Date remarktime;
    private int count;
    private String province;
    private String plateNumber;

    public CarLocation(Integer id, String vehID, String modID, String realtime, String latitudes, String longitudes, String remarks, Date remarktime, int count, String province, String plateNumber) {
        this.id = id;
        this.vehID = vehID;
        this.modID = modID;
        this.realtime = realtime;
        this.latitudes = latitudes;
        this.longitudes = longitudes;
        this.remarks = remarks;
        this.remarktime = remarktime;
        this.count = count;
        this.province = province;
        this.plateNumber = plateNumber;
    }

    public CarLocation() {
    }

    public Integer getId() {
        return this.id;
    }

    public String getVehID() {
        return this.vehID;
    }

    public String getModID() {
        return this.modID;
    }

    public String getRealtime() {
        return this.realtime;
    }

    public String getLatitudes() {
        return this.latitudes;
    }

    public String getLongitudes() {
        return this.longitudes;
    }

    public String getRemarks() {
        return this.remarks;
    }

    public Date getRemarktime() {
        return this.remarktime;
    }

    public int getCount() {
        return this.count;
    }

    public String getProvince() {
        return this.province;
    }

    public String getPlateNumber() {
        return this.plateNumber;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setVehID(String vehID) {
        this.vehID = vehID;
    }

    public void setModID(String modID) {
        this.modID = modID;
    }

    public void setRealtime(String realtime) {
        this.realtime = realtime;
    }

    public void setLatitudes(String latitudes) {
        this.latitudes = latitudes;
    }

    public void setLongitudes(String longitudes) {
        this.longitudes = longitudes;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public void setRemarktime(Date remarktime) {
        this.remarktime = remarktime;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public void setPlateNumber(String plateNumber) {
        this.plateNumber = plateNumber;
    }
}
