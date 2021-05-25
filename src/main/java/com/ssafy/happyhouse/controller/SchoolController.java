package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ssafy.happyhouse.dto.School;
import com.ssafy.happyhouse.model.service.SchoolService;

@Controller
public class SchoolController {

	@Autowired
	SchoolService sService;

	@GetMapping("/school")
	public String list(String schoolField, String schoolText, Model m, HttpSession session) throws SQLException {
		List<School> schools = null;
		switch (schoolField) {
		case "LIST":
			schools = sService.searchSchool(schoolText);
			schoolText = "";
			break;
		default:
			schools = sService.selectDong(schoolText);
		}
		m.addAttribute("schools", schools);
		m.addAttribute("schoolField", schoolField);
		m.addAttribute("schoolText", schoolText);
		// session.setAttribute("schools", schools);
		return "index";
	}
	
	@GetMapping("/gotoschool")
	   public String exRedirect(String schoolurl) {
	       return "redirect:"+schoolurl;
	   }

	/*
	 * @GetMapping("/school" ) public String list(HttpSession session) throws
	 * SQLException { List<School> schools= null; schools =
	 * sService.searchSchool(schoolText); session.setAttribute("schools", schools);
	 * return "index"; }
	 */

}
