package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.School;



public interface SchoolService {
	School selectSchool(int code) throws SQLException;
	void insert(School school) throws SQLException;
	void modify(School school) throws SQLException;
	void delete(School school) throws SQLException;
	List<School> searchSchool(String schoolText) throws SQLException;
	List<School> selectDong(String dong) throws SQLException;
}
