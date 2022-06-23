package com.izo.camp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WeatherController {
	
	

	@RequestMapping(value = "/weather", method = RequestMethod.GET)
	public String weatherView() {
		return "weather/weatherHome";
	}
}
