package com.izo.camp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.izo.camp.addmoney.AddmoneyService;
import com.izo.camp.market.BasketService;
import com.izo.camp.market.MarketService;
import com.izo.camp.vo.AddmoneyVO;
import com.izo.camp.vo.BasketVO;
import com.izo.camp.vo.ProductVO;

@Controller
public class MarketController {

	@Autowired
	MarketService marketService;
	@Autowired
	BasketService basketService;
	@Autowired
	AddmoneyService addmoneyService;
	
	@Autowired
	HttpSession session;
	
	
	//마켓메인이동
	@RequestMapping("/marketMain_Temp")
	public String goMarketMain(Model model) {
		
		model.addAttribute("productList", marketService.getList());
		
		return "market/marketMain";
	}
	
	
	
	@RequestMapping("/marketDetail")
	public String goDetail(int idx, Model model) {
		
		ProductVO product = marketService.getProductByIdx(idx);
		
		model.addAttribute("product", product);
		
		return "market/detail";
	}
	
	//장바구니 페이지 이동
	@RequestMapping("/goBasket")
	public String goBasket(Model model) {
		String loginId = (String)session.getAttribute("loginId");
		
		System.out.println(loginId + "장바구니 목록 불러오기");
		List<BasketVO> basketList = basketService.getBasket(loginId);
		
		int totolPrice = 0;
		for(BasketVO vo : basketList) {
			totolPrice += vo.getTotalPrice();
		}
		model.addAttribute("basketProduct", basketList);
		model.addAttribute("totalPrice", totolPrice);
		
		return "market/basket";
	}
	
	//장바구니 추가
	@ResponseBody
	@RequestMapping("/addBasket")
	public String addBasket(BasketVO basketVO) {
		
		basketService.addBasket(basketVO);
		
		return basketVO.getMemberId();
	}
	
	//plusMinusPcs
	//plusMinusPage 플러스 마이너스 쿼리
	@ResponseBody
	@RequestMapping(value="/plusMinusPcs",method=RequestMethod.POST )
	public int plusMinus(BasketVO basketVO) {
	
		//chagePcs = 변한 토탈 가격을 반환한다.
		int totalPrice = basketService.changePcs(basketVO);
		
		return totalPrice;
	}
	
	//deleteBasket 장바구니 항목 지우기
	@ResponseBody
	@RequestMapping("/deleteBasket")
	public int deleteBasket(BasketVO basketVO) {
		basketService.deleteProduct(basketVO);
		List<BasketVO> basketList = basketService.getBasket(basketVO.getMemberId());
		int totalPrice = 0;
		for(BasketVO vo : basketList) {
			totalPrice += vo.getTotalPrice();
		}
		return totalPrice;
	}
	
	@ResponseBody
	@RequestMapping(value="/findTotalPrice",method=RequestMethod.POST )
	public int findTotalPrice(String memberId) {
		
		List<BasketVO> basketList = basketService.getBasket(memberId);
		int totalPrice = 0;
		for(BasketVO vo : basketList) {
			totalPrice += vo.getTotalPrice();
		}
		
		return totalPrice;
	}
	
	//오더페이지 
	@RequestMapping("/goOrderPage")
	public String goOrderPage(Model model) {
		String loginId = (String)session.getAttribute("loginId");
		
		List<BasketVO> basketList = basketService.getBasket(loginId);
		int totolPrice = 0;
		for(BasketVO vo : basketList) {
			totolPrice += vo.getTotalPrice();
		}
		
		AddmoneyVO addmoneyVO = addmoneyService.getMoneyInfo(loginId);
		//getMoneyInfo
		model.addAttribute("basketProduct", basketList);
		model.addAttribute("totalPrice", totolPrice);
		model.addAttribute("charge",addmoneyVO.getTotalmoney());
		model.addAttribute("simplePwd",addmoneyVO.getSimplepwd());
		
		
		return "market/order";
	}
	
	@RequestMapping("checkHasCard")
	@ResponseBody
	public boolean checkHasCard(String loginId) {
		return addmoneyService.getMoneyInfo(loginId) != null;
	}
	
	@RequestMapping("orderOk")
	public String orderOk() {
		//구매 관련 DB 수정 구현
		//order에 정보 삽입.
		return "market/orderComplete";
	}
	
}
