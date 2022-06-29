package com.izo.camp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izo.camp.addmoney.AddmoneyService;
import com.izo.camp.member.MemberService;
import com.izo.camp.vo.MemberVO;

@Controller
public class AddmoneyController {

	@Autowired
	AddmoneyService addmoneyService;
	MemberService memberService;
	
	
	@RequestMapping("/money.do")
	public void money(int idx, Model model) {
		MemberVO vo = memberService.userInfo(idx);
		//model.addAttribute(attributeValue)
		//return "mypage/addmoney";
	}
	
	@RequestMapping("/registCard.do")
	public void registCare() {
		
	}
	
}
