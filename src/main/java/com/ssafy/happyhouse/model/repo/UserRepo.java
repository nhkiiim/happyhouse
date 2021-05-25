package com.ssafy.happyhouse.model.repo;

import java.sql.SQLException;

import com.ssafy.happyhouse.dto.User;


public interface UserRepo {
	User select(String id) throws SQLException;
	void insert(User user) throws SQLException;
	void delete(String id) throws SQLException;
	void update(User user) throws SQLException;
	void sendMail(String pwd, String address, String id)throws SQLException;
	User findPwd(User user)throws SQLException;
}
