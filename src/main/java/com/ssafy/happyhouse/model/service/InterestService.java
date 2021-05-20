package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;

import com.ssafy.happyhouse.dto.Interest;

public interface InterestService {
	Interest select(String id) throws SQLException;
	void insert(Interest interest) throws SQLException;
	void delete(String id, String dong) throws SQLException;
}
