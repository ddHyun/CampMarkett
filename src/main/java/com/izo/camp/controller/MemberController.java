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
	
	//회원가입화면
	@RequestMapping(value = "/join_view.do")
	public String join_view(Model model) {
		model.addAttribute("list", memberService.list());
		return "join/joinView";
	}
	
	
}
