package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.BaseAddress;
import com.ssafy.happyhouse.model.repo.BaseAddressRepo;

@Service
public class BaseAddressServiceImpl implements BaseAddressService {

	@Autowired
	BaseAddressRepo brepo;
	
	@Override
	public BaseAddress select(String dong) throws SQLException {
		return brepo.select(dong);
	}

}
