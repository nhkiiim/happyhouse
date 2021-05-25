package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.School;

public interface SchoolService {
	List<School> searchSchool(String dong) throws SQLException;
	int countElem(String dong) throws SQLException;
	int countMid(String dong) throws SQLException;
	int countHigh(String dong) throws SQLException;
	int countSpe(String dong) throws SQLException;
}
