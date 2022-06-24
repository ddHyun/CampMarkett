package com.izo.camp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	//주소API팝업창 이동
	@RequestMapping("/jusoPopup.do")
	public String jusoPopup() {
		return "join/jusoPopup";
	}
	
	//아이디 중복검사 창으로 이동
	@RequestMapping("/checkId.do")
	public String checkId() {
		return "join/checkId";
	}
	
	//아이디 중복검사
	@RequestMapping("/checkId2.do")
	public String checkId(String id) {
		List<String> idList = memberService.listId();
		int cntId = 0; //아이디 중복횟수 검사용 변수
		for (String i : idList) {
			if(id.equals(i)) {
				cntId++;
			}
		}
		return "join/checkId";
	}
	
}
