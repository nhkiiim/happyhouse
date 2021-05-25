package com.ssafy.happyhouse.model.repo;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.Subscribe;

public interface SubscribeRepo {
	Subscribe select(String email) throws SQLException;
	void insert(String email) throws SQLException;
	List<Subscribe> search() throws SQLException;
}
