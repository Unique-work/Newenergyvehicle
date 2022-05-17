package com.siit.zsw.service;

import java.util.List;


import com.siit.zsw.dao.DistributionMapper;
import com.siit.zsw.dao.FaultMapper;
import com.siit.zsw.pojo.Distribution;
import com.siit.zsw.pojo.Fault;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




@Service
public class ChartService {
	
	@Autowired
	private FaultMapper faultMapper;
	
	@Autowired
	private DistributionMapper distributionMapper;



	public List<Fault> getFault(){
		return faultMapper.getFault();
	}
	
	public List<Distribution> getDistribution(){
		return distributionMapper.getDistribution();
	}

	public List<Distribution> getCarDistri(){
		return distributionMapper.getCarDistri();
	}


   	public List<Fault> getListById(int id){
		return faultMapper.getListById(id);
	}

	public int getCountBydid(int id){
		return faultMapper.getCountBydid(id);
	}

}

