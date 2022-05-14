package com.siit.zsw.pojo;

public class FaultMean {
    private Integer id;

    private String faultid;

    private String faultmean;

    private String remarks;

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

    public String getFaultmean() {
        return faultmean;
    }

    public void setFaultmean(String faultmean) {
        this.faultmean = faultmean == null ? null : faultmean.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}