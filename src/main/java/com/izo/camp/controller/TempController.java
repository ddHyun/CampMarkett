package com.izo.camp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TempController {

	//옮김
//	@RequestMapping("marketMain_Temp")
//	public String goMarketMain(){
//		
//		return "temp/marketMain";
//	}

	
	//옮김
//	@RequestMapping("reviewMain_Temp")
//	public String goReviewMain(){
//		
//		return "temp/reviewMain";
//	}

// 옮김
//	@RequestMapping("campingAreaMain_Temp")
//	public String goAreaMaingo(){
//		
//		return "temp/areaMain";
//	}
	
	@RequestMapping("memberInfo_Temp")
	public String goMemberInfo(){
		
		return "temp/memberInfoMain";
	}
	
	@RequestMapping("Login_Temp")
	public String goLoginMain(){
		
		return "temp/login";
	}
}
