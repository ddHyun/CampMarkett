package com.izo.camp.controller;

import java.io.Writer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izo.camp.review.ReviewService;
import com.izo.camp.vo.ReviewVO;

@Controller

	// 게시판 메인
	public class ReviewController {

	@Autowired
	ReviewService reviewService;

	@RequestMapping("/reviewMain.do")
	public String reviewMain(Model model) {
		model.addAttribute("list", reviewService.list());
		return "review/reviewMain";
		}

	
	// 상세보기
	@RequestMapping("/reviewRead.do")
	public String reviewRead(int idx, Model model) {
		
		model.addAttribute("vo", reviewService.getReviewIdx(idx));
		
		return "review/reviewRead";
		
	}
	// 새 글 작성 폼으로 이동
	@RequestMapping("/reviewInform.do")
	public String reviewInform() {
		
		return "review/reviewInform";
		
	}
	
	// 새 글 작성
	@RequestMapping("/reviewInsert.do")

		
	}
	
}
