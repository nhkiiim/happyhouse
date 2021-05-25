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
	public List<School> searchSchool(String dong) throws SQLException {
		return srepo.searchSchool(dong);
	}

	@Override
	public int countElem(String dong) throws SQLException {
		return srepo.countElem(dong);
	}

	@Override
	public int countMid(String dong) throws SQLException {
		return srepo.countMid(dong);
	}

	@Override
	public int countHigh(String dong) throws SQLException {
		return srepo.countHigh(dong);
	}

	@Override
	public int countSpe(String dong) throws SQLException {
		return srepo.countSpe(dong);
	}
	
}
