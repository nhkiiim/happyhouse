package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.User;
import com.ssafy.happyhouse.model.repo.UserRepo;
import com.sun.mail.handlers.message_rfc822;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepo urepo;
	
	@Autowired
	JavaMailSender mailSender;
	private static final String FROM_ADDRESS = "";
	

	
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
	
	public User sendMail(String pwd, String address, String id) throws SQLException {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(address);
		message.setFrom(FROM_ADDRESS);
		message.setSubject("HappyHouse 비밀번호찾기 안내 메일입니다.");
		message.setText(pwd + "," +address);
		mailSender.send(message);
		return urepo.select(id);
	}

	@Override
	public User findPwd(User user) throws SQLException {
		return urepo.findPwd(user);
	}

}
