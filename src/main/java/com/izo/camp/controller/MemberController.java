package com.izo.camp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izo.camp.member.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
//	@RequestMapping(value = "/join_view.do")
//	public String join_view(Model model) {
//		model.addAttribute("list", memberService.list());
//		return "join/joinView";
//	}
	
	//회원가입페이지로 이동
	@RequestMapping("/joinView.do")
	public String joinView() {
		return "join/joinView";
	}
	
	//즈소API 이동
//	@RequestMapping("/sample.do")
//	public String sample() {
//		return "join/Sample";
//	}
	
	//주소API팝업창 이동
	@RequestMapping("/jusoPopup.do")
	public String jusoPopup() {
		return "join/jusoPopup";
	}
	
}
