package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.HouseInfo;
import com.ssafy.happyhouse.model.repo.HouseInfoRepo;

@Service
public class HouseInfoServiceImpl implements HouseInfoService{
	
	@Autowired
	HouseInfoRepo hirepo;
	
	@Override
	public HouseInfo searchInfo(String aptname) throws SQLException{
		return hirepo.searchInfo(aptname);
	}
}
