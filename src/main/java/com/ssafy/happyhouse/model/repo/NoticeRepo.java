package com.ssafy.happyhouse.model.repo;

import java.sql.SQLException;

import com.ssafy.happyhouse.dto.Notice;

// 선택, 삽입, 수정, 삭제
public interface NoticeRepo {
	Notice select(String notice_no) throws SQLException;
	void insert(Notice notice_no) throws SQLException;
	void modify(Notice notice_no) throws SQLException;
	void delete(int notice_no) throws SQLException;
}
