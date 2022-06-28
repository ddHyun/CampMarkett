package com.izo.camp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izo.camp.addmoney.AddmoneyService;

@Controller
public class AddmoneyController {

	@Autowired
	AddmoneyService addmoneyService;
	
	@RequestMapping("/money.do")
	public String money() {
		return "mypage/addmoney";
	}
	
}
