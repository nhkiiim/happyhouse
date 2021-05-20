package com.ssafy.happyhouse.model.repo;

import java.sql.SQLException;

import com.ssafy.happyhouse.dto.BaseAddress;

public interface BaseAddressRepo {
	BaseAddress select(String dong) throws SQLException;
}
