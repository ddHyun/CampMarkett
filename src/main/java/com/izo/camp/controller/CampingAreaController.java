package com.izo.camp.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.filefilter.FalseFileFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
		String defaultAddress = "경원대로 1397, 학원"; 		
		Map getXY = campInfoService.getKakaoApiFromAddress(defaultAddress);
		model.addAttribute("lat", getXY.get("lat"));
		model.addAttribute("lon", getXY.get("lon"));
		
		return "weather/weatherHome";
	}
	
	//가까운 캠핑장 정보 얻어오기
	@RequestMapping("/info")
	public String getInfoMyLocation(
			@RequestParam(required=false, defaultValue="0")Double lat,
			@RequestParam(required=false, defaultValue="0")Double lon,
			Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		//campInfoService.getKakaoApiFromAddress("");
		String defaultAddress = "경원대로 1397, 학원";
		if(lat!=0) {
			System.out.println("in lat zero");
			session.setAttribute("sessionLat", lat);
			session.setAttribute("sessionLon", lon);
		}
		
		//현재 위치 xy 좌표
		Map<String,Double> getXY = campInfoService.getKakaoApiFromAddress(defaultAddress);
		
		//가까운 캠핑장 목록
		getXY.replace("lat", (Double) session.getAttribute("sessionLat"));
		getXY.replace("lon", (Double) session.getAttribute("sessionLon"));
		
		System.out.println("세션값 : "+ (Double) session.getAttribute("sessionLat"));
		System.out.println("map : " + getXY);
		List<CampInfoVO> list  = 
				campInfoService.getNearCampingArea(defaultAddress, getXY);
		//현재 위치 바인딩
		model.addAttribute("lat", getXY.get("lat"));
		model.addAttribute("lon", getXY.get("lon"));
		
		if(session.getAttribute("sessionLat") != null) {
			model.addAttribute("lat", session.getAttribute("sessionLat"));
			model.addAttribute("lon", session.getAttribute("sessionLat"));
		}
		
		/*
		 * for(CampInfoVO vo : list) { System.out.println(vo.getName() + "거리는 : " +
		 * vo.getDistance()+"km 입니다."); }
		 */
	    
	    model.addAttribute("camplist", list);
	    
	    return "campingArea/main";
	}
	
	//캠핑장 상세보기
	@RequestMapping("/campDetail")
	public String goDetailPage(Integer idx,Model model) {
		
		CampInfoVO campInfoVO = campInfoService.campInfoByIndex(idx);
		
		
		model.addAttribute("campInfo",campInfoVO);
		
		return "campingArea/detail";
	}
	
	
	//나의 위치 선택하기
	@RequestMapping("/makeLocation")
	public String goMakeLocation() {
		
		return "campingArea/popupLocation";
	}
	
}
