package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ssafy.happyhouse.dto.BaseAddress;
import com.ssafy.happyhouse.dto.HouseInfo;
import com.ssafy.happyhouse.dto.Interest;
import com.ssafy.happyhouse.dto.User;
import com.ssafy.happyhouse.model.service.BaseAddressService;
import com.ssafy.happyhouse.model.service.HouseInfoService;
import com.ssafy.happyhouse.model.service.InterestService;
import com.ssafy.happyhouse.model.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService uService;

	@Autowired
	InterestService iService;

	@Autowired
	BaseAddressService bService;
	
	@Autowired
	HouseInfoService hiService;

	@PostMapping("/login")
	public String login(User user,HttpSession session, Model m) throws SQLException {
		User selected=uService.select(user.getId());
		if(selected!=null && selected.getPass().equals(user.getPass())){
			session.setAttribute("userinfo", selected);
			
			Interest interest=iService.select(user.getId());
			if(interest!=null) {
				List<HouseInfo> hi = hiService.searchInfo();
				session.setAttribute("house_info", hi);
				session.setAttribute("interest_info",interest);
				BaseAddress ba= bService.select(interest.getDong());
				session.setAttribute("address_info",ba);
			}
			return "redirect:/";
		}else{
			m.addAttribute("msg", "로그인 실패");
			return "index";
		}
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}

	@PostMapping("/join")
	public String join(User user,Model m) {
		try {
			uService.insert(user);
			m.addAttribute("msg","회원 등록 성공 "+user.getName()+" 님 반갑습니다.");

		}catch(SQLIntegrityConstraintViolationException e) {
			m.addAttribute("msg","회원 등록 실패 :"+user.getId()+" 는 이미 사용중입니다.");

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "index";
	}
	
	@PostMapping("/modify")
	public String modify(HttpSession session, User user, Model m) {
		try {
			uService.update(user);
			m.addAttribute("msg","정보 수정 완료");
			session.setAttribute("userinfo",user); 
		}catch(Exception e) {
			m.addAttribute("msg","정보 수정 실패");
			e.printStackTrace();
		}
		return "index";
	}
	
	@PostMapping("/userdelete")
	public String delete(HttpSession session,Model m) {
		try {
			User user= (User)session.getAttribute("userinfo");
			Interest inter =(Interest) session.getAttribute("interest_info");
			uService.delete(user.getId());
			iService.delete(user.getId(),inter.getDong());
			if(session!=null)session.invalidate();
			
			m.addAttribute("msg","탈퇴 완료 ㅠㅠ");
		} catch(Exception e) {
			m.addAttribute("msg","탈퇴 실패");
			e.printStackTrace();
		}
		
		return "index";
	}
	
	@GetMapping("/find")
	public String find(String uid, Model m) throws SQLException {
		User user=uService.select(uid);
		if(user==null) m.addAttribute("result","존재하지 않는 회원입니다.");
		else m.addAttribute("result","비밀번호 &nbsp;:&nbsp;"+user.getPass());
		return "members/desc";
	}

}
