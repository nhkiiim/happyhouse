package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ssafy.happyhouse.dto.BaseAddress;
import com.ssafy.happyhouse.dto.Interest;
import com.ssafy.happyhouse.dto.User;
import com.ssafy.happyhouse.model.service.BaseAddressService;
import com.ssafy.happyhouse.model.service.InterestService;
import com.ssafy.happyhouse.model.service.UserService;

@Controller
public class InterestController {

	@Autowired
	InterestService iService;

	@Autowired
	UserService uService;
	
	@Autowired
	BaseAddressService bService;

	@GetMapping("/interdelete")
	public String interdelete(HttpSession session,Interest interest_info,Model m) throws SQLException {
		try {
			User user= (User)session.getAttribute("userinfo");
			iService.delete(user.getId(), interest_info.getDong());
			if(session!=null) {
				session.removeAttribute("address_info");
				session.removeAttribute("interest_info");
				m.addAttribute("msg","삭제 완료");
			}
		}
		catch(Exception e) {
			m.addAttribute("msg","삭제 실패");
		}
		return "index";
	}

	@PostMapping("/interregist")
	public String interregist(HttpSession session,Interest interest,Model m) {
		try {
			User user= (User)session.getAttribute("userinfo");
			interest.setId(user.getId());
			BaseAddress ba = bService.select(interest.getDong());
			if(ba!=null) {
				iService.insert(interest);
				m.addAttribute("msg","관심지역 등록 성공!");
				session.setAttribute("interest_info",interest); 
				session.setAttribute("address_info", ba);
			
			} else {
				m.addAttribute("msg","없는 지역입니다.");
			}

		}catch(SQLIntegrityConstraintViolationException e) {
			m.addAttribute("msg","관심지역 등록 실패 이미 등록되어 있습니다.");

		}catch(Exception e) {
			e.printStackTrace();
		}
		return "index";
	}
}
