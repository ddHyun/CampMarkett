package com.izo.camp.controller;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
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
			@RequestParam(required=false, defaultValue="1")int page,
			Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		//campInfoService.getKakaoApiFromAddress("");
		String defaultAddress = "경원대로 1397, 학원";
		if(lat!=0) {
			session.setAttribute("sessionLat", lat);
			session.setAttribute("sessionLon", lon);
		}
		
		//현재 위치 xy 좌표
		Map<String,Double> getXY = campInfoService.getKakaoApiFromAddress(defaultAddress);
		
		//가까운 캠핑장 목록
		getXY.replace("lat", (Double) session.getAttribute("sessionLat"));
		getXY.replace("lon", (Double) session.getAttribute("sessionLon"));
		
		
		List<CampInfoVO> list  = 
				campInfoService.getNearCampingArea(getXY);
		//현재 위치 바인딩
		model.addAttribute("lat", getXY.get("lat"));
		model.addAttribute("lon", getXY.get("lon"));
		
		if(session.getAttribute("sessionLat") != null) {
			model.addAttribute("lat", session.getAttribute("sessionLat"));
			model.addAttribute("lon", session.getAttribute("sessionLon"));
		}
		
		/*
		 * for(CampInfoVO vo : list) { System.out.println(vo.getName() + "거리는 : " +
		 * vo.getDistance()+"km 입니다."); }
		 */
		
		int last = (page * 10) > list.size() ? list.size() : (page * 10);
		
		//listsize 20 
		//page 2   20  >  20
		
	    int maxPage = (list.size() + 9) / 10; 
		
	    
	    System.out.println(list.size() + " < 페이지 >  " + maxPage);
	    list = list.subList(10 * (page - 1), last);
	    
	    model.addAttribute("camplist", list);
	    model.addAttribute("maxPage", maxPage);
	    model.addAttribute("nowPage", page);
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
	
	
	
	//==============================================임시
	@RequestMapping("campingAreaMain_Temp")
	public String goAreaMaingo(@RequestParam(required=false, defaultValue="0")Double lat,
			@RequestParam(required=false, defaultValue="0")Double lon,
			@RequestParam(required=false, defaultValue="1")int page,
			Model model,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		//campInfoService.getKakaoApiFromAddress("");
		String address = "경원대로 1397, 학원";
		
		//주어진 정보가 있다면 위치 session 에 session 값 추가
		if(lat!=0) {
			session.setAttribute("sessionLat", lat);
			session.setAttribute("sessionLon", lon);
		}
		
		//현재 위치 xy 좌표
		Map<String,Double> getXY = new HashMap<String, Double>();
		//로그인이 되어있지 않은 상태라면 
		if(session.getAttribute("loginId")==null || session.getAttribute("loginId").equals("null")) {
			getXY.put("lat", (Double) session.getAttribute("sessionLat"));
			getXY.put("lon", (Double) session.getAttribute("sessionLon"));
		}
		
		//로그인이 되어 있다면
		else {
			address="영종대로 190, 아이고";
			getXY = campInfoService.getKakaoApiFromAddress(address);
		}
		
		//가까운 캠핑장 목록
		List<CampInfoVO> list  = 
				campInfoService.getNearCampingArea( getXY);
		//현재 위치 바인딩
		model.addAttribute("lat", getXY.get("lat"));
		model.addAttribute("lon", getXY.get("lon"));
		
		if(session.getAttribute("sessionLat") != null) {
			model.addAttribute("lat", session.getAttribute("sessionLat"));
			model.addAttribute("lon", session.getAttribute("sessionLon"));
		}
		
		//페이징 처리
		
		int last = (page * 10) > list.size() ? list.size() : (page * 10);
		int maxPage = (list.size() + 9) / 10; 
		
	    list = list.subList(10 * (page - 1), last);
	    
	    model.addAttribute("camplist", list);
	    model.addAttribute("maxPage", maxPage);
	    model.addAttribute("nowPage", page);
		
		return "campingArea/areaMain";
	}
	
}
