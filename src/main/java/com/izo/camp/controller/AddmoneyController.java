package com.izo.camp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		System.out.println("컨트롤러단 현재잔액: "+vo1.getTotalmoney());
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
	
	//충전하기
	@ResponseBody
	@RequestMapping(value="/addmoney.do", produces = "application/text; charset=UTF-8", method=RequestMethod.POST)
	public String addMoney(AddmoneyVO vo) {		
		String param = "";
		//아이디와 결제비밀번호가 일치하는 idx유무 확인
		int idx = addmoneyService.getIdxforMoney(vo);
		AddmoneyVO vo1 = addmoneyService.getMoneyInfo(vo.getId());//id로 가져온 충전테이블 정보
		if(idx > 0) {//일치정보가 있다면 충전정보 추가하기			
			int sumMoney =vo.getAddedmoney() + vo.getTotalmoney(); 
			vo.setCardno(vo1.getCardno());
			vo.setCvcno(vo1.getCvcno());
			int date = vo1.getValidcarddate();
			vo.setValidcarddate(date);
			vo.setTotalmoney(sumMoney);
			//충전금액 추가 쿼리 실행			
			int cnt = addmoneyService.addMoney(vo);
			param = "n";
			if(cnt > 0) {//DB에 저장됐다면
				param = "y";
			}else {
				param = "n";
			}
		}else {//카드번호 불일치
			param = "noData";
		}
		String result = String.format("[{'param':'%s'}]", param);
		return result;
	}
	
}
