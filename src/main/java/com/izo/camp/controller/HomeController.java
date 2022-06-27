package com.izo.camp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.izo.camp.mapper.DeptMapper;
import com.izo.camp.member.MemberService;
import com.izo.camp.vo.DeptVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	DeptMapper deptMapper;
	@Autowired
    private HttpSession session;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		session.setAttribute("sessionLat", 37.49051);
		session.setAttribute("sessionLon", 126.72414);
		
		model.addAttribute("serverTime", formattedDate );

		for(DeptVO deptVO : deptMapper.dept()) {
			System.out.println(deptVO.getDeptno());
		}
		
		return "home";

	}
	
	
	@Autowired
	MemberService memberService;
	@RequestMapping(value = "/join_view.do")
	public String join_view(Model model) {
		model.addAttribute("list", memberService.list());
		return "join/join_view";
	}
	//테스트	
	
	//테스트2
	
}
