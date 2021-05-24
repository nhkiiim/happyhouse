package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.School;
import com.ssafy.happyhouse.model.repo.SchoolRepo;

@Service
public class SchoolServiceImpl implements SchoolService {
	
	@Autowired
	SchoolRepo srepo;

	@Override
	public School selectSchool(int code) throws SQLException {
		return srepo.selectSchool(code);
	}

	@Override
	public void insert(School school) throws SQLException {
		srepo.insert(school);
	}

	@Override
	public void modify(School school) throws SQLException {
		srepo.modify(school);
	}

	@Override
	public void delete(School school) throws SQLException {
		srepo.delete(school);
	}

	@Override
	public List<School> searchSchool(String schoolText) throws SQLException {
		return srepo.searchSchool(schoolText);
	}
	@Override
	public List<School> selectDong(String dong) throws SQLException {
		return srepo.selectDong(dong);
	}

}
