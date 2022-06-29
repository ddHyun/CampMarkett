package com.izo.camp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TempController {
	
	@RequestMapping("marketMain_Temp")
	public String goMarketMain(){
		
		return "temp/marketMain";
	}
	
	@RequestMapping("reviewMain_Temp")
	public String goReviewMain(){
		
		return "temp/reviewMain";
	}
	
	@RequestMapping("campingAreaMain_Temp")
	public String goAreaMaingo(){
		
		return "temp/areaMain";
	}
	
	@RequestMapping("memberInfo_Temp")
	public String goMemberInfo(){
		
		return "temp/memberInfoMain";
	}
	
	@RequestMapping("Login_Temp")
	public String goLoginMain(){
		
		return "temp/login";
	}
}
