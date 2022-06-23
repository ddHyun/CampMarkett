package com.izo.camp.exception;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomError {
	
	@RequestMapping("/error404")
	public String goErrorPage404() {
		return "error/error404";
	}
	
	@RequestMapping("/error405")
	public String goErrorPage405() {
		return "error/error405";
	}
	
	@RequestMapping("/error500")
	public String goErrorPage500() {
		return "error/error500";
	}
}
