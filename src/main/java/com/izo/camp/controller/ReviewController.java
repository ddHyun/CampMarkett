package com.izo.camp.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.izo.camp.review.ReviewService;
import com.izo.camp.vo.ReviewVO;

@Controller

// 게시판 메인
public class ReviewController {

	@Autowired
	ReviewService reviewService;
	
	@Autowired
	HttpServletRequest request;
	

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
	 public String reviewInsert(ReviewVO vo, Model model) {
		 
			/*
			 * String webPath = "/resources/upload/"; String savePath =
			 * request.getSession().getServletContext().getRealPath(webPath);
			 * 
			 * // 업로드된 파일의 정보 MultipartFile photo = vo.getFilename(); String filename =
			 * "no_file";
			 * 
			 * // 업로드된 파일이 존재할 경우 if(!photo.isEmpty()) {
			 * 
			 * //업로드될 실제 파일명 filename = photo.getOriginalFilename();
			 * 
			 * File saveFile = new File(savePath, filename);
			 * 
			 * if(!saveFile.exists()) {
			 * 
			 * saveFile.mkdirs();
			 * 
			 * } else {
			 * 
			 * //파일명 겹치는것 방지 long time = System.currentTimeMillis(); filename =
			 * String.format("%d_%s", time, filename); saveFile = new File(savePath,
			 * filename);
			 * 
			 * }
			 * 
			 * try { photo.transferTo(saveFile); } catch (Exception e) {
			 * 
			 * e.printStackTrace(); }
			 * 
			 * }
			 * 
			 * vo.setFilename(photo);
			 */
		 
		 model.addAttribute("vo",reviewService.setReviewVO(vo));
		 
		 
		 return "review/reviewMain";
		 
	 }
	 

}
