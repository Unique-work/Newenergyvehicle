package com.siit.zsw.service.impl;

import com.siit.zsw.dao.FaultSolutionMapper;
import com.siit.zsw.pojo.FaultSolution;
import com.siit.zsw.service.FaultSoltionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FaultSoltionServiceImpl implements FaultSoltionService {
   @Autowired
    FaultSolutionMapper faultSolutionMapper;
    @Override
    public FaultSolution getSolutionByFaultID(String faultID) {
        return faultSolutionMapper.getSolutionByFaultID(faultID);
    }
}
