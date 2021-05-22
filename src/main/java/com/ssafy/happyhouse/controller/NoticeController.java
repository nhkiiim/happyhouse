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

import com.ssafy.happyhouse.dto.Notice;
import com.ssafy.happyhouse.model.service.NoticeService;

@Controller
public class NoticeController {
	
//	Notice select(String notice_no) throws SQLException;
//	void insert(Notice notice_no) throws SQLException;
//	void modify(Notice notice_no) throws SQLException;
//	void delete(String id, String dong) throws SQLException;

	@Autowired
	NoticeService nService;

	@GetMapping("/notice" )
	public String list(int notice_no,Model m) throws SQLException {
		List<Notice> notices= null;
		notices = nService.search();
		m.addAttribute("notices", notices);
		return "index";
	}
	

	@PostMapping("/noticeregist")
	public String noticeregist(Notice notice,Model m) {
		
			try {
				nService.insert(notice);
				m.addAttribute("msg",notice.getNotice_no() + "번 공지사항 등록 성공 ");

			}catch(SQLIntegrityConstraintViolationException e) {
				m.addAttribute("msg",notice.getNotice_no() + "번 공지사항 등록 실패 ");

			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return "index";

		
	}
	
	@GetMapping("/noticedelete")
	public String noticedelete(HttpSession session,Notice notice_info, Model m) throws SQLException {
		try {
			nService.delete(notice_info.getNotice_no());
			if(session!=null) {
				session.removeAttribute("notice_info");
				m.addAttribute("msg","삭제 완료");
			}
		}
		catch(Exception e) {
			m.addAttribute("msg","삭제 실패");
		}
		return "index";
	}
}
