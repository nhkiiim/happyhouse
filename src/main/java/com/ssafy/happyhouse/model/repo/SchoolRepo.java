package com.ssafy.happyhouse.model.repo;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.School;

// 선택, 삽입, 수정, 삭제
public interface SchoolRepo {
	List<School> searchSchool(String dong) throws SQLException;
	int countElem(String dong) throws SQLException;
	int countMid(String dong) throws SQLException;
	int countHigh(String dong) throws SQLException;
	int countSpe(String dong) throws SQLException;
	
}
