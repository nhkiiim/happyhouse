package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.Subscribe;

public interface EmailService {
	void sendEmail(String toAddress, String subject, String body);
	Subscribe select(String email) throws SQLException;
	void insert(String email) throws SQLException;
	List<Subscribe> search() throws SQLException;
}
