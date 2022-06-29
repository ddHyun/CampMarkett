package com.izo.camp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.izo.camp.addmoney.AddmoneyService;
import com.izo.camp.member.MemberService;
import com.izo.camp.vo.MemberVO;

@Controller
public class AddmoneyController {

	@Autowired
	AddmoneyService addmoneyService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	HttpSession session;
	
	
	@RequestMapping(value="/money.do", produces = "application/text; charset=UTF-8", method=RequestMethod.POST)
	public String money(Model model) {
		//세션으로 받은 정보로 필요한 거 활용할 때 
		int idx = (Integer)session.getAttribute("loginIdx");
		MemberVO vo = memberService.userInfo(idx);
		model.addAttribute("vo", vo);
		return "mypage/addmoney";
	}
	
	@RequestMapping("/registCard.do")
	public void registCare() {
		
	}
	
}
