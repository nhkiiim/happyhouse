package com.ssafy.happyhouse.model.repo;

import java.sql.SQLException;

import com.ssafy.happyhouse.dto.Interest;

public interface InterestRepo {
	Interest select(String id) throws SQLException;
	void insert(Interest interest) throws SQLException;
	void delete(String id, String dong) throws SQLException;
}
