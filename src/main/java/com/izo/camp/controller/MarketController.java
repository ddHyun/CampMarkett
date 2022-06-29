package com.izo.camp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izo.camp.market.MarketService;

@Controller
public class MarketController {

	@Autowired
	MarketService marketService;
	
	@RequestMapping("/marketMain")
	public String goMarketMain(Model model) {
		
		model.addAttribute("productList", marketService.getList());
		
		return "market/marketMain";
	}
	
}
