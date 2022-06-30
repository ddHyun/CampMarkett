package com.izo.camp.controller;

import java.io.File;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public String reviewRead(int idx, Model model, ReviewVO vo) {
	
		
		model.addAttribute("vo", vo);
		
		// 조회수 증가
		reviewService.readhitCount(vo.getIdx());
		
		// 후기 조회
		model.addAttribute("vo", reviewService.getReviewIdx(idx));

		return "review/reviewRead";

	}

	// 새 글 작성 폼으로 이동
	@RequestMapping("/reviewInform.do")
	public String reviewInform() {


		return "review/reviewInform";

	}

	  // 새 글 작성(사진 첨부 포함)
	 
	 @RequestMapping("/reviewInsert.do")
	 public String reviewInsert(ReviewVO vo, Model model) {
		 
		 System.out.println("vo.filename" + vo.getFile());
		 
		 String webPath = "/resources/upload/";
		 String savePath = request.getSession().getServletContext().getRealPath(webPath);
		 
		 MultipartFile file = vo.getFile();
		 
		 String filename = "no_file";
		 
		 // 업로드된 파일 있을경우
		 if(!file.isEmpty()) {
			 
			 // 업로드된 실제 파일명
			 filename = file.getOriginalFilename();
			 
			 File saveFile = new File(savePath, filename);
			
			 if(saveFile.exists()) {
				 
				 saveFile.mkdirs();
				 
			 } else {
				 
				 // 파일명 중복방지
				 long time = System.currentTimeMillis();
				 filename = String.format("%d_%s", time, filename);
				 saveFile = new File(savePath, filename);
				 
			 }
			 
			 try {
				file.transferTo(saveFile);
			 } catch (Exception e) {
				e.printStackTrace();
			 }
			 
		 }
		 
		 vo.setFilename(filename);
			 
		 model.addAttribute("vo",reviewService.setReviewVO(vo));
		 
		 //reviewMain에서 list를 받아서 보여주니까 list에도 묶어서 전달
		 model.addAttribute("list",reviewService.list());
		 
		 
		 return "review/reviewMain";
		 
	 }
	 
	 // reviewRead화면에서 글 삭제하기
	 @RequestMapping("/reviewDelete.do")
	 @ResponseBody
	 public String reviewDelete(int idx, String pwd) {
		 
		 HashMap<String, Object> map = new HashMap<String, Object>();
		 map.put("idx", idx);
		 map.put("pwd", pwd);
		 
		 int res = reviewService.delReview(idx, pwd, map);
		 
		 String result="no";
		 if(res == 1) {
			 result = "yes";
		 }
		 
		 String finRes = String.format("[{'res':'%s'}]", result);
		 
		 return	finRes;
		 
	 }
	 

		
	 

		  @RequestMapping(value="/reviewSelect.do",method=RequestMethod.POST)
		  public String reviewSelect(int idx, Model model) {
		  
		  ReviewVO vo = reviewService.selectReview(idx); 
		  model.addAttribute("vo", vo);
		  
		  return "review/reviewModify"; 
		  }
		  
		  
		  @RequestMapping("/reviewUpdate.do")
		  public String reviewUpdate(ReviewVO vo, Model model) {
		  
			  String webPath = "/resources/upload/";
			  String savePath = request.getSession().getServletContext().getRealPath(webPath);
			  
			  MultipartFile file = vo.getFile();
				 
			  String filename = "no_file";
				 
			  // 업로드된 파일 있을경우
			  if(!file.isEmpty()) {
				 
			  // 업로드된 실제 파일명
			  filename = file.getOriginalFilename();
					 
			  File saveFile = new File(savePath, filename);
					
			  if(saveFile.exists()) {
						 
			  saveFile.mkdirs();
						 
			  } else {
						 
			  // 파일명 중복방지
			  long time = System.currentTimeMillis();
			  filename = String.format("%d_%s", time, filename);
			  saveFile = new File(savePath, filename);
						 
			  }
					 
			  try {
		      file.transferTo(saveFile);
			  } catch (Exception e) {
			  e.printStackTrace();
			  }
					 
			}
				 
			vo.setFilename(filename);
			  
			 
	
		  
		  model.addAttribute("vo", reviewService.updateReview(vo));
		  //reviewMain에서 list를 받아서 보여주니까 list에도 묶어서 전달
		  model.addAttribute("list", reviewService.list());
		  
		  return "/review/reviewMain"; 
		 
		  }
}
