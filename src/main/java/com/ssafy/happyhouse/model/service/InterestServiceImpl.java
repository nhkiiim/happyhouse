package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.Interest;
import com.ssafy.happyhouse.model.repo.InterestRepo;

@Service
public class InterestServiceImpl implements InterestService{

	@Autowired
	InterestRepo irepo;
	
	@Override
	public Interest select(String id) throws SQLException {
		return irepo.select(id);
	}

	@Override
	public void insert(Interest interest) throws SQLException {
		irepo.insert(interest);
	}

	@Override
	public void delete(String id, String dong) throws SQLException {
		irepo.delete(id, dong);
	}

}
