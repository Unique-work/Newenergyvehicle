package com.siit.zsw.pojo;

public class carfriend {
    private Integer id;

    private String carfname;

    private String cartype;

    private String carnumber;

    private String userid;

    private String friendid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCarfname() {
        return carfname;
    }

    public void setCarfname(String carfname) {
        this.carfname = carfname == null ? null : carfname.trim();
    }

    public String getCartype() {
        return cartype;
    }

    public void setCartype(String cartype) {
        this.cartype = cartype == null ? null : cartype.trim();
    }

    public String getCarnumber() {
        return carnumber;
    }

    public void setCarnumber(String carnumber) {
        this.carnumber = carnumber == null ? null : carnumber.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getFriendid() {
        return friendid;
    }

    public void setFriendid(String friendid) {
        this.friendid = friendid == null ? null : friendid.trim();
    }
}