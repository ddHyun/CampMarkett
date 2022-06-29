package com.izo.camp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.izo.camp.market.BasketService;
import com.izo.camp.market.MarketService;
import com.izo.camp.vo.ProductVO;

@Controller
public class MarketController {

	@Autowired
	MarketService marketService;
	@Autowired
	BasketService basketService;
	
	@Autowired
	HttpSession session;
	
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
	public String doBasket(Model model) {
		String loginId = (String)session.getAttribute("loginId");
		
		System.out.println(loginId + " 목록 불러오기");
		
		model.addAttribute("basketProduct", basketService.getBasket(loginId));
		
		return "market/basket";
	}
	
	//plusMinusPcs
	//plusMinusPage
	@ResponseBody
	@RequestMapping(value="/plusMinusPcs",method=RequestMethod.POST )
	public String plusMinus(@RequestParam("productId")String productId,@RequestParam("changePcs") Integer changePcs) {
		System.out.println(productId +  " 들어왔나? " + changePcs);
		return "success";
	}
}
