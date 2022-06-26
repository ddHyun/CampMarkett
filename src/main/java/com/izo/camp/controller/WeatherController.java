package com.izo.camp.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.izo.camp.infomation.CampInfoService;
import com.izo.camp.infomation.WeatherService;
import com.izo.camp.vo.CampInfoVO;

@Controller
public class WeatherController {
	
	@Autowired
	WeatherService weatherService;
	
	@Autowired
	CampInfoService campInfoService;

	@RequestMapping(value = "/weather", method = RequestMethod.GET)
	public String weatherView(Model model) throws IOException {
		weatherService.checkWeather();
		campInfoService.hasCamping();
		
		Map getXY = campInfoService.getKakaoApiFromAddress("주소 입력해주세요");
		model.addAttribute("lat", getXY.get("lat"));
		model.addAttribute("lon", getXY.get("lon"));
		
		return "weather/weatherHome";
	}
	
	
	@RequestMapping("/info")
	public void getInfoMyLocation() {
		
		campInfoService.getKakaoApiFromAddress("");
		List<CampInfoVO> list  = campInfoService.getNearCampingArea();
	    for(CampInfoVO vo : list) {
	    	System.out.println(vo.getName());
	    }
	}
	
}
