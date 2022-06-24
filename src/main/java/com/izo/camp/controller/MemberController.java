package com.izo.camp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izo.camp.member.MemberService;
import com.izo.camp.vo.MemberVO;

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
	
	//아이디중복확인
	@RequestMapping("checkID.do")
	public String checkId(@ModelAttribute("id") String id, Model model) {		
		List<String> idList = memberService.idList();
		
		int cntId = 0;
		
		for(String i : idList) {
			if(id.equals(i)) {
				cntId++;
			}
		}
		
		String duplicationID = "no";
		
		if(cntId != 0) {
			duplicationID = "yes";
		}
		
		model.addAttribute("duplicationID", duplicationID);
		
		return "join/joinView";
	}
	
	@RequestMapping("/join.do")
	public void join(MemberVO vo) {
		
	}
}
