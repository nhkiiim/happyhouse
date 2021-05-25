package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ssafy.happyhouse.dto.BaseAddress;
import com.ssafy.happyhouse.dto.Commercial;
import com.ssafy.happyhouse.dto.HouseInfo;
import com.ssafy.happyhouse.model.service.BaseAddressService;
import com.ssafy.happyhouse.model.service.CommercialService;
import com.ssafy.happyhouse.model.service.HouseInfoService;


@Controller
public class CommercialController {	
	@Autowired
	CommercialService cService;

	@Autowired
	BaseAddressService bService;
	
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
	
	@GetMapping("/land")
	public String commercial(String dong, Model m) throws SQLException {
		List<Commercial> lands=null;
		try {
			lands=cService.land(dong);
			Commercial l1=lands.get(0);
			Commercial l2=lands.get(1);
			Commercial l3=lands.get(2);
			
			BaseAddress bal=bService.select(dong);
			
			m.addAttribute("bal",bal);
			m.addAttribute("lands",lands);
			m.addAttribute("l1",l1);
			m.addAttribute("l2",l2);
			m.addAttribute("l3",l3);
			m.addAttribute("landDong",dong);
		}
		catch(Exception e) {
			m.addAttribute("msg","검색 실패");
			e.printStackTrace();
		}
		return "index";
	}
}
