package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.Notice;
import com.ssafy.happyhouse.dto.QnaDto;
import com.ssafy.happyhouse.model.service.HouseDealService;
import com.ssafy.happyhouse.model.service.NoticeService;
import com.ssafy.happyhouse.model.service.QnaService;

@Controller
public class SearchController {

	@Autowired
	HouseDealService hService;
	@Autowired
	NoticeService nService;
	@Autowired
	QnaService qService;
	
	@GetMapping({"/","/index"})
	public String index(HttpSession session) throws SQLException {
		List<Notice> notices= null;
		notices = nService.search();
		session.setAttribute("notices", notices);
		return "index";
	}
	
	@GetMapping({"/qna"})
	public String qna() {
		return "qna";
	}
	
	@PostMapping({"email"})
	public String email() {
		return "index";
	}
	
	@GetMapping("/search")
	public String list(String searchField, String searchText,Model m) throws SQLException {
		List<HouseDeal> housedeals=null;
		switch(searchField) {
			case "APTNAME":
				housedeals=hService.selectAptName(searchText);
				break;
			case "PRICE":
				housedeals=hService.selectPrice(Integer.parseInt(searchText));
				break;
			case "DONG":
				housedeals=hService.selectDong(searchText);
				break;
			default:
				housedeals=hService.search();
				searchText ="";
		}
		m.addAttribute("housedeals", housedeals);
		m.addAttribute("searchField", searchField);
		m.addAttribute("searchText",  searchText);
		return "index";
	}
	
	@GetMapping("/view")
	public String view(int no, Model m) throws SQLException {
		HouseDeal housedeal=hService.select(no); 
		m.addAttribute("housedeal", housedeal);	
		return "index";
	}
	
	@GetMapping("/detailmap")
	public String detailmap(String name, Model m) throws SQLException {
		List<HouseDeal> housedeal=null;
				housedeal=hService.selectAptName(name);
		HouseDeal h= housedeal.get(0);
		m.addAttribute("housedeal", h);	
		return "index";
	}
	
	@GetMapping("/avg")
	public String avg(String dong, Model m) throws SQLException {
		
		int a=hService.avg60(dong);
		int b=hService.avg80(dong);
		int c=hService.avg100(dong);
		int d=hService.avg140(dong);
		m.addAttribute("avg60", a*1000);	
		m.addAttribute("avg80", b*1000);	
		m.addAttribute("avg100", c*1000);	
		m.addAttribute("avg140", d*1000);	
		m.addAttribute("avgDong", dong);	
		return "index";
	}
	
}
