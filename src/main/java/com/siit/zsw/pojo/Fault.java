package com.siit.zsw.pojo;

public class Fault {
    private Integer id;

    private Integer faulttype;

    private Integer faultnumber;

    private String faultname;

    private Integer proid;
    private int count;

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getFaulttype() {
        return faulttype;
    }

    public void setFaulttype(Integer faulttype) {
        this.faulttype = faulttype;
    }

    public Integer getFaultnumber() {
        return faultnumber;
    }

    public void setFaultnumber(Integer faultnumber) {
        this.faultnumber = faultnumber;
    }

    public String getFaultname() {
        return faultname;
    }

    public void setFaultname(String faultname) {
        this.faultname = faultname == null ? null : faultname.trim();
    }

    public Integer getProid() {
        return proid;
    }

    public void setProid(Integer proid) {
        this.proid = proid;
    }
}