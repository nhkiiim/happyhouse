package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.ssafy.happyhouse.dto.Subscribe;
import com.ssafy.happyhouse.dto.User;
import com.ssafy.happyhouse.model.service.EmailService;
import com.ssafy.happyhouse.model.service.UserService;

@Controller
public class EmailController {

	@Autowired
	EmailService eService;

	@Autowired
	UserService uService;

	@PostMapping("/subscribe")
	public String sendEmail(Model m, String email) throws SQLException {

		try {

			m.addAttribute("msg", email + "님 구독 성공!!!");
			eService.sendEmail(email, "HappyHouse 구독해 주셔서 감사합니다.",
					"안녕하세요. " + email + " 님  \n 구독해주셔서 감사합니다. \n\n http://localhost:8888/happyhouse/");
			eService.insert(email);

		} catch (Exception e) {
			m.addAttribute("msg", email + "님 이미 구독이 되어있습니다!!!");
			e.printStackTrace();
		}

		return "index";
	}

	@PostMapping("/findpwd")
	public String findpwd(String id, String name, String phone, Model m) throws SQLException {

		try {
			User tuser = uService.findPwd(id, name, phone);
			if (tuser != null) {
				eService.sendEmail(tuser.getAddress(), name + "님, HappyHouse 비밀번호찾기 안내 메일입니다. ",
						"안녕하세요. " + name + "님. \n" + "비밀번호 찾기에서 요청하신 임시비밀번호를 이메일로 보내드립니다.\n\n" + "아이디 : " + id
								+ "\n비밀번호 : " + tuser.getPass()
								+ "\n\n http://localhost:8888/happyhouse/ 에서 로그인 및 비밀번호 변경하시길 바랍니다. \n감사합니다.");

				m.addAttribute("msg", "성공적으로 등록하신 이메일로 임시비밀번호를 보냈습니다.");
			} else
				m.addAttribute("msg", "아이디나 이메일이 일치하는 사용자가 없습니다.");
		} catch (Exception e) {

			e.printStackTrace();
		}

		return "index";
	}

	@PostMapping("/sendSubscribe")
	public String sendSubscribe(String title, String content, Model m) throws SQLException {

		try {
			List<Subscribe> subscribes = null;
			subscribes = eService.search();
			if (subscribes.isEmpty()) {
				m.addAttribute("msg", "구독자가 없습니다.");
			} else {
				for (int i = 0; i < subscribes.size(); i++) {
					eService.sendEmail(subscribes.get(i).getEmail(), title,
							content + "\n\nhappyhouse : http://localhost:8888/happyhouse/");
				}
				m.addAttribute("msg", "모든 구독자에게 메일을 발송하였습니다!");
			}
		} catch (Exception e) {
			m.addAttribute("msg", "메일 발송에 오류가 발생하였습니다.");
			e.printStackTrace();
		}

		return "index";
	}

}
