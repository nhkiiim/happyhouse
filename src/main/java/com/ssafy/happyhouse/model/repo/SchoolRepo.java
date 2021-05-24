package com.ssafy.happyhouse.model.repo;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.School;


// 선택, 삽입, 수정, 삭제
public interface SchoolRepo {
	School selectSchool(int code) throws SQLException;
	void insert(School school) throws SQLException;
	void modify(School school) throws SQLException;
	void delete(School school) throws SQLException;
	List<School> searchSchool(String schoolText) throws SQLException;
	List<School> selectDong(String dong) throws SQLException;
}
