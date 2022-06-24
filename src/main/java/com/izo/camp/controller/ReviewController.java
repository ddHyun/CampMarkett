package com.izo.camp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izo.camp.review.ReviewService;

@Controller

	public class ReviewController {

	@Autowired
	ReviewService reviewService;

	@RequestMapping("/reviewMain.do")
	public String reviewMain(Model model) {
		model.addAttribute("list", reviewService.list());
		return "review/reviewMain";
		}

	

	@RequestMapping("/reviewRead.do")
	public String reviewRead(int idx, Model model) {
		
		model.addAttribute("vo", reviewService.getReviewIdx(idx));
		
		return "review/reviewRead";
		
	}

}
