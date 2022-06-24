package com.izo.camp.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.izo.camp.infomation.CampInfoService;
import com.izo.camp.infomation.WeatherService;

@Controller
public class WeatherController {
	
	@Autowired
	WeatherService weatherService;
	
	@Autowired
	CampInfoService campInfoService;

	@RequestMapping(value = "/weather", method = RequestMethod.GET)
	public String weatherView() throws IOException {
		weatherService.checkWeather();
		campInfoService.hasCamping();
		return "weather/weatherHome";
	}
	
}
