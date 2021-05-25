package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.Subscribe;
import com.ssafy.happyhouse.model.repo.SubscribeRepo;

@Service
public class EmailServiceImpl implements EmailService {
	
	@Autowired
	private JavaMailSender sender;
	
	@Autowired
	private SubscribeRepo srepo;

	@Override
	public void sendEmail(String toAddress, String subject, String body) {
		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		 try {
		      helper.setTo(toAddress);
		      helper.setSubject(subject);
		      helper.setText(body);
		    } catch (MessagingException e) {
		      e.printStackTrace();
		    }
		sender.send(message);
	}

	@Override
	public Subscribe select(String email) throws SQLException {
		return srepo.select(email);
	}

	@Override
	public void insert(String email) throws SQLException {
		srepo.insert(email);
	}

	@Override
	public List<Subscribe> search() throws SQLException {
		return srepo.search();
	}

}
