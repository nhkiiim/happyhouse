package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.User;
import com.ssafy.happyhouse.model.repo.UserRepo;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepo urepo;
	
	@Override
	public User select(String id) throws SQLException {
		return urepo.select(id);
	}

	@Override
	public void insert(User user) throws SQLException {
		urepo.insert(user);
	}

	@Override
	public void delete(String id) throws SQLException {
		urepo.delete(id);
	}

	@Override
	public void update(User user) throws SQLException {
		urepo.update(user);
	}

}
