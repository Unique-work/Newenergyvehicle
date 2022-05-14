package com.siit.zsw.pojo;

import lombok.Setter;

@Setter
public class FaultInfo {
    private Integer id;

    private String faultid;

    private String faultstate;

    private String vehid;

    private String realtime;

    private String faultlevel;

    private String modid;

    private String remarks;
    private FaultMean faultMean;
    private FaultSolution faultSolution;

    private int fid;
    private int count;
    private String fmodID;
    private String fremarks;

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

    public String getFaultstate() {
        return faultstate;
    }

    public void setFaultstate(String faultstate) {
        this.faultstate = faultstate == null ? null : faultstate.trim();
    }

    public String getVehid() {
        return vehid;
    }

    public void setVehid(String vehid) {
        this.vehid = vehid == null ? null : vehid.trim();
    }

    public String getRealtime() {
        return realtime;
    }

    public void setRealtime(String realtime) {
        this.realtime = realtime == null ? null : realtime.trim();
    }

    public String getFaultlevel() {
        return faultlevel;
    }

    public void setFaultlevel(String faultlevel) {
        this.faultlevel = faultlevel == null ? null : faultlevel.trim();
    }

    public String getModid() {
        return modid;
    }

    public void setModid(String modid) {
        this.modid = modid == null ? null : modid.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public FaultMean getFaultMean() {
        return this.faultMean;
    }

    public FaultSolution getFaultSolution() {
        return this.faultSolution;
    }

    public int getFid() {
        return this.fid;
    }

    public int getCount() {
        return this.count;
    }

    public String getFmodID() {
        return this.fmodID;
    }

    public String getFremarks() {
        return this.fremarks;
    }
}