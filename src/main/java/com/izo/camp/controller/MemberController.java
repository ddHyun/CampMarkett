package com.izo.camp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.izo.camp.member.MemberService;
import com.izo.camp.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
//	@RequestMapping(value = "/memberCheck.do")
//	public String memberCheck(Model model) {
//		model.addAttribute("list", memberService.list());
//		return "join/memberCheck";
//	}
	
	//가입확인 페이지로 이동
	@RequestMapping("/memberCheck.do")
	public String memberCheck() {
		return "join/memberCheck";
	}
		
	//회원가입 유무확인 페이지 -> 회원가입 페이지
	@RequestMapping("/joinView.do")
	public String joinView(MemberVO vo, Model model) {
		model.addAttribute("vo", vo);
		return "join/joinView";
	}
	
	//로그인 페이지 -> 회원가입 페이지
		@RequestMapping("/joinView2.do")
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
	@ResponseBody
	public String checkId(@ModelAttribute("id") String id) {		
		List<String> idList = memberService.idList();
		
		int cnt = 0;		
		for(String i : idList) {
			if(id.equals(i)) {
				cnt++;
			}
		}
		
		String param = "n";
		
		if(cnt > 0) {
			param = "y";
		}
		
		String result = String.format("[{'param':'%s'}]", param);		
		
		return result;
	}
	
	//회원가입하기
	@ResponseBody
	@RequestMapping("/join.do")
	public String join(MemberVO vo) {
		int cnt = memberService.insertInfo(vo);
		System.out.println(cnt);
		String param = "n";
		if(cnt > 0) {
			param = "y";
		}
		String result = String.format("[{'param':'%s'}]", param);
		return result;
	}
	
	//회원가입 유무 확인
	@ResponseBody
	@RequestMapping("/memberOrNot.do")
	public String search(MemberVO vo) {
		
		int idx = memberService.getMemberIdx(vo);
		
		String param = "n";
		
		if(idx > 0) {
			param = "y";
		}
		
		String result = String.format("[{'param':'%s'}]", param);
		
		return result;
	}
	
	
	//로그인페이지로 이동
	@RequestMapping("/loginView.do")
	public String loginView() {
		return "login/loginView";
	}
		
	//로그인하기
	@RequestMapping("/goLogin.do")
	@ResponseBody
	public String goLogin(MemberVO vo) {
		
		int idx = memberService.getIdxFromId(vo);
		
		String param = "n";
		
		if(idx > 0) {
			param = "y";
		}
		
		System.out.println(idx);
		System.out.println(param);
		
		String result = String.format("[{'param':'%s'}]", param);
		
		return result;
	}
	
	
}
