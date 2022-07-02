package com.izo.camp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.izo.camp.addmoney.AddmoneyService;
import com.izo.camp.member.MemberService;
import com.izo.camp.vo.AddmoneyVO;
import com.izo.camp.vo.MemberVO;

@Controller
public class AddmoneyController {

	@Autowired
	AddmoneyService addmoneyService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	HttpSession session;
	
	//카드등록, 충전페이지로 이동
	@RequestMapping(value="/money.do", produces = "application/text; charset=UTF-8", method=RequestMethod.POST)
	public String money(Model model) {
		//세션으로 받은 정보로 필요한 거 활용할 때 
		int idx = (Integer)session.getAttribute("loginIdx");
		System.out.println("머니컨트롤러 idx : "+idx);
		MemberVO vo = memberService.userInfo(idx);
		String id = (String)session.getAttribute("loginId");
		System.out.println("머니컨트롤러 세션저장 아이디: "+id);
		AddmoneyVO vo1 = addmoneyService.getMoneyInfo(id);
		System.out.println("머니컨트롤러 vo1.id : "+vo1.getId());
		model.addAttribute("vo", vo);
		model.addAttribute("vo1", vo1);
		return "mypage/addmoney";
	}
	
	//카드 등록하기
	@ResponseBody
	@RequestMapping(value="/registCard.do", produces = "application/text; charset=UTF-8", method=RequestMethod.POST)
	public String registCard(AddmoneyVO vo) {
		String param = "yesData";
		String dbCardNo = addmoneyService.searchCardNo(vo);
		if(dbCardNo.equals("none")) {//일치데어터 없음 : 등록 가능한 상태
			int cnt = addmoneyService.registCard(vo);
				param = "n";//DB에 저장 안됨
			if(cnt>0) {
				param = "y";//DB에 저장됨
			}
		}
		String result = String.format("[{'param':'%s'}]", param);
		return result;
	}
	
}
