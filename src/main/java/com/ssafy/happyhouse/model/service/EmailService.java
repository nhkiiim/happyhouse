package com.ssafy.happyhouse.model.service;

public interface EmailService {
	void sendEmail(String toAddress, String subject, String body);
}
