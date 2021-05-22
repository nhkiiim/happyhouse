package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.Notice;


public interface NoticeService {
	Notice select(String notice_no) throws SQLException;
	void insert(Notice notice_no) throws SQLException;
	void modify(Notice notice_no) throws SQLException;
	void delete(int notice_no) throws SQLException;
	List<Notice> search() throws SQLException;
}
