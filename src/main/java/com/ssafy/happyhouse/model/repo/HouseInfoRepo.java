package com.ssafy.happyhouse.model.repo;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.HouseInfo;

public interface HouseInfoRepo {
	HouseInfo lnglatRoad(int no) throws SQLException;
}
