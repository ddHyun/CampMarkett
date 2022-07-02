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
		MemberVO vo = memberService.userInfo(idx);
		model.addAttribute("vo", vo);
		return "mypage/addmoney";
	}
	
	//카드 등록하기
	@ResponseBody
	@RequestMapping(value="/registCard.do", produces = "application/text; charset=UTF-8", method=RequestMethod.POST)
	public String registCard(AddmoneyVO vo) {
		String inputCardNo = vo.getCardno();
		String dbCardNo = addmoneyService.searchCardNo(inputCardNo);
		int cnt = addmoneyService.registCard(vo);
		System.out.println("카드등록 결과 : "+cnt);
		String param = "n";
		if(cnt>0) {
			param = "y";
		}
		String result = String.format("[{'param':'%s'}]", param);
		return result;
	}
	
}
