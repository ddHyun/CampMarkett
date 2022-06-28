package com.izo.camp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.izo.camp.addmoney.AddmoneyService;

@Controller
public class AddmoneyController {

	@Autowired
	AddmoneyService addmoneyService;
	
}
