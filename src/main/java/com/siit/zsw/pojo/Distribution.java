package com.siit.zsw.pojo;

import java.math.BigDecimal;

public class Distribution {
    private Integer id;

    private Integer carnumber;

    private BigDecimal longtude;

    private BigDecimal latitude;

    private String province;
    private CarMessage carMessage;

    public CarMessage getCarMessage() {
        return carMessage;
    }

    public void setCarMessage(CarMessage carMessage) {
        this.carMessage = carMessage;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCarnumber() {
        return carnumber;
    }

    public void setCarnumber(Integer carnumber) {
        this.carnumber = carnumber;
    }

    public BigDecimal getLongtude() {
        return longtude;
    }

    public void setLongtude(BigDecimal longtude) {
        this.longtude = longtude;
    }

    public BigDecimal getLatitude() {
        return latitude;
    }

    public void setLatitude(BigDecimal latitude) {
        this.latitude = latitude;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }
}