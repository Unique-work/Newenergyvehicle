package com.siit.zsw.pojo;

public class FaultSolutionKey {
    private Integer id;

    private String faultid;

    private Integer vernumber;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFaultid() {
        return faultid;
    }

    public void setFaultid(String faultid) {
        this.faultid = faultid == null ? null : faultid.trim();
    }

    public Integer getVernumber() {
        return vernumber;
    }

    public void setVernumber(Integer vernumber) {
        this.vernumber = vernumber;
    }
}