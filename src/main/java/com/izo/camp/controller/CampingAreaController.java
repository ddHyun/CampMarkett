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
public class CampingAreaController {
	
	@Autowired
	WeatherService weatherService;
	
	@Autowired
	CampInfoService campInfoService;
	
	//나의 주소에 따른 위도 경도 좌표 받기
	@RequestMapping(value = "/weather", method = RequestMethod.GET)
	public String weatherView(Model model) throws IOException {
		weatherService.checkWeather();
		campInfoService.hasCamping();
		String defaultAddress = "영종대로 190, 햇빛아파트"; 		
		Map getXY = campInfoService.getKakaoApiFromAddress(defaultAddress);
		model.addAttribute("lat", getXY.get("lat"));
		model.addAttribute("lon", getXY.get("lon"));
		
		return "weather/weatherHome";
	}
	
	//가까운 캠핑장 정보 얻어오기
	@RequestMapping("/info")
	public String getInfoMyLocation(Model model) {
		
		//campInfoService.getKakaoApiFromAddress("");
		String defaultAddress = "영종대로 190, 운서동이래요";
		//현재 위치 xy 좌표
		Map<String,Double> getXY = campInfoService.getKakaoApiFromAddress(defaultAddress);
		//가까운 캠핑장 목록
		List<CampInfoVO> list  = 
				campInfoService.getNearCampingArea(defaultAddress, getXY);
		//현재 위치 바인딩
		model.addAttribute("lat", getXY.get("lat"));
		model.addAttribute("lon", getXY.get("lon"));
		
	    for(CampInfoVO vo : list) {
	    	System.out.println(vo.getName() + "거리는 : " + vo.getDistance()+"km 입니다.");
	    }
	    
	    model.addAttribute("camplist", list);
	    
	    return "campingArea/main";
	}
	
	@RequestMapping("/campDetail")
	public String goDetailPage(Integer idx,Model model) {
		
		CampInfoVO campInfoVO = campInfoService.campInfoByIndex(idx);
		
		
		model.addAttribute("campInfo",campInfoVO);
		
		return "campingArea/detail";
	}
	
}
