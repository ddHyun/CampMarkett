package com.izo.camp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izo.camp.mapper.ProductMapper;
import com.izo.camp.market.MarketService;
import com.izo.camp.vo.ProductVO;

@Controller
public class MarketController {

	@Autowired
	MarketService marketService;
	
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
	
}
