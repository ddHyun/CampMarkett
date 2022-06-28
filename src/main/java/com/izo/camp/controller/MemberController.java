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
	
	//주소찾기 이동
	@RequestMapping("/jusoPopup.do")
	public String jusoPopup() {
		return "join/jusoPopup";
	}
	
	//아이디중복확인
	@RequestMapping("checkID.do")
	@ResponseBody
	public String checkId(@ModelAttribute("id") String id) {		
		int idx = memberService.idIdx(id);
		
		System.out.println(idx);
		
		String param = "n";
		
		if(idx > 0) {
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
	@ResponseBody
	@RequestMapping("/goLogin.do")
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
	
	//아이디찾기 페이지로 이동
	@RequestMapping("/findMyID.do")
	public String findMyID() {
		return "login/findMyID";
	}
	
	//아이디 찾기 페이지로 이동
	@RequestMapping("/searchIDView.do")
	public String searchIDView() {
		return "login/findMyID";
	}
	
	//아이디찾기
	@ResponseBody
	@RequestMapping("/searchID.do")
	public String searchID(MemberVO vo) {
		String result = String.format("[{'id':'%s'}]", memberService.searchID(vo)); 
		return result;		
	}
	
	//비밀번호 찾기 페이지로 이동
	@RequestMapping("/searchPwdView.do")
	public String searchPwdView() {
		return "login/findMyPWD";
	}
	
	//비밀번호 찾기
	@ResponseBody
	@RequestMapping("/searchPwd.do")
	public String searchPwd(MemberVO vo) {
		int idx1 = memberService.idIdx(vo.getId());
		int idx2 = memberService.getMemberIdx(vo);
		System.out.println("idx1 : "+idx1+"/ idx2 : "+idx2);
		String param = "n";
		if(idx1 == idx2) {
			if(idx1!=0 ||idx2!=0) {
				param = "y";
			}else {
				param = "n";
			}
		}else {
			param = "n";
		}
		String result = String.format("[{'param':'%s'}]", param);
		return result;
	}
}
