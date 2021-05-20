package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.HouseDeal;

public interface HouseDealService {
	List<HouseDeal> search() throws SQLException;
	HouseDeal select(int no) throws SQLException;
	List<HouseDeal> selectPrice(int price) throws SQLException;
	List<HouseDeal> selectAptName(String aptName) throws SQLException;
	List<HouseDeal> selectDong(String dong) throws SQLException;
}
