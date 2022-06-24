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
	
	//회원인지 아닌지 확인하기
	@RequestMapping("/memberOrNot.do")
	public String memberOrNot(@ModelAttribute("name, birth") String name, int birth, Model model) {
		List<MemberVO> list = memberService.list();
		
		int cnt = 0; //DB자료와 중복된 값이 있으면 증가
		
		for (int i = 0; i < list.size(); i++) {
			String dbName = list.get(i).getName();
			System.out.println(dbName);
			if(name.equals(dbName)) {
				cnt++;	//같은 이름이 있을 때 1 반환
				int dbBirth = list.get(i).getBirth();
				if(birth == dbBirth) {
					cnt++; //이름이 같은데 생년월일까지 같을 때 2 반환
				}
			}
		}
		
		System.out.println(cnt);
		String result = "" + cnt;
		
		model.addAttribute("result", result);
		
//		int idx = 0;
//	
//		int dbIdx = memberService.memberCheck();
//		
//		if(dbIdx > 0) {
//			idx = dbIdx;
//		}
//		System.out.println("idx="+idx+"/dbidx="+dbIdx);
		
		return "join/memberCheck";
	}
	
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
		
}
