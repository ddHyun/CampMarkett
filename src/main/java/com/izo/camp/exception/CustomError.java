package com.izo.camp.exception;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomError {
	
	@RequestMapping("/error")
	public String goErrorPage() {
		return "error/error";
	}
}
