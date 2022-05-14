package com.siit.zsw.pojo;

import java.util.Date;

public class CarLocation {
    private Integer id;

    private String vehid;

    private String modid;

    private String realtime;

    private String latitudes;

    private String longitudes;

    private String remarks;

    private Date recordtime;

    private String province;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getVehid() {
        return vehid;
    }

    public void setVehid(String vehid) {
        this.vehid = vehid == null ? null : vehid.trim();
    }

    public String getModid() {
        return modid;
    }

    public void setModid(String modid) {
        this.modid = modid == null ? null : modid.trim();
    }

    public String getRealtime() {
        return realtime;
    }

    public void setRealtime(String realtime) {
        this.realtime = realtime == null ? null : realtime.trim();
    }

    public String getLatitudes() {
        return latitudes;
    }

    public void setLatitudes(String latitudes) {
        this.latitudes = latitudes == null ? null : latitudes.trim();
    }

    public String getLongitudes() {
        return longitudes;
    }

    public void setLongitudes(String longitudes) {
        this.longitudes = longitudes == null ? null : longitudes.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public Date getRecordtime() {
        return recordtime;
    }

    public void setRecordtime(Date recordtime) {
        this.recordtime = recordtime;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }
}