package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ssafy.happyhouse.dto.Commercial;
import com.ssafy.happyhouse.model.service.CommercialService;


@Controller
public class CommercialController {	
	@Autowired
	CommercialService cService;

	@GetMapping("/commercial")
	public String commercial(String dong,String[] texts,Model m) throws SQLException {
		List<Integer> datas=null;
		try {
			datas=new ArrayList<>();
			for(int i=0;i<texts.length;i++) {
				String tmp=texts[i];
			
				if(texts[i].equals("분식")||texts[i].equals("유아")||texts[i].equals("카페")||texts[i].equals("도서관")) {
					datas.add(cService.commCodeA(dong, tmp));
				}else {
					datas.add(cService.commCodeB(dong, tmp));
				}
			}
			m.addAttribute("texts",texts);
			m.addAttribute("datas",datas);
			m.addAttribute("commerval",dong);
		}
		catch(Exception e) {
			m.addAttribute("msg","검색 실패");
			e.printStackTrace();
		}
		return "index";
	}
}
