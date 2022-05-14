package com.siit.zsw.pojo;

public class FaultSolution extends FaultSolutionKey {
    private String faultsolution;

    private String remarks;

    public String getFaultsolution() {
        return faultsolution;
    }

    public void setFaultsolution(String faultsolution) {
        this.faultsolution = faultsolution == null ? null : faultsolution.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}