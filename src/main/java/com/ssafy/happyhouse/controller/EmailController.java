package com.ssafy.happyhouse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.ssafy.happyhouse.model.service.EmailService;

@Controller
public class EmailController {
	
	@Autowired
	EmailService eService;
	
	@PostMapping("/subscribe")
	public String sendEmail(Model m, String email) {
		m.addAttribute("msg",email + "님 구독 성공!!!");
		eService.sendEmail(email, "HappyHouse 구독해 주셔서 감사합니다.", 
				"안녕하세요. " + email+" 님  \n 구독해주셔서 감사합니다. \n\n http://localhost:8888/happyhouse/"
		);
		
		return "index";
		
	}
	
	
}
