package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;

import com.ssafy.happyhouse.dto.BaseAddress;

public interface BaseAddressService {
	BaseAddress select(String dong) throws SQLException;
}
