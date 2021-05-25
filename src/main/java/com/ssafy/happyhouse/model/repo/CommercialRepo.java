package com.ssafy.happyhouse.model.repo;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.Commercial;

public interface CommercialRepo {
	int commCodeA(String dong,String tmp) throws SQLException;
	int commCodeB(String dong,String tmp) throws SQLException;
	List<Commercial> land(String dong) throws SQLException;
}
