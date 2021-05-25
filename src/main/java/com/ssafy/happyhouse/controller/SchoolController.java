package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.ArrayList;
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
	public String list(String dong, Model m, HttpSession session) throws SQLException {
		List<School> schools = null;
		List<Integer> datas = new ArrayList<>();
		try {
			schools = sService.searchSchool(dong);
			datas.add(sService.countElem(dong));
			datas.add(sService.countMid(dong));
			datas.add(sService.countHigh(dong));
			datas.add(sService.countSpe(dong));

			m.addAttribute("schools", schools);
			m.addAttribute("datas", datas);
			m.addAttribute("schooldong", dong);
		}catch(Exception e) {
			m.addAttribute("msg","검색 실패");
			e.printStackTrace();
		}
		return "index";
	}

}
