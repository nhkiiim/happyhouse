package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;

import com.ssafy.happyhouse.dto.User;

public interface UserService {
	User select(String id) throws SQLException;
	void insert(User user) throws SQLException;
	void delete(String id) throws SQLException;
	void update(User user) throws SQLException;
	User findPwd(String id, String name, String phone)throws SQLException;
}
