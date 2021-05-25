package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.HouseInfo;
import com.ssafy.happyhouse.model.repo.HouseInfoRepo;

@Service
public class HouseInfoServiceImpl implements HouseInfoService{
	
	@Autowired
	HouseInfoRepo hirepo;
	
	@Override
	public HouseInfo lnglatRoad(int no) throws SQLException{
		return hirepo.lnglatRoad(no);
	}
}
