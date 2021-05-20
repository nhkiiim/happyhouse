package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.model.service.HouseDealService;

@Controller
public class SearchController {

	@Autowired
	HouseDealService hService;
	
	@GetMapping({"/","/index"})
	public String index() {
		return "index";
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
	public String view(int no,Model m) throws SQLException {
		HouseDeal housedeal=hService.select(no); 
		m.addAttribute("housedeal", housedeal);		
		return "view";
	}
}
