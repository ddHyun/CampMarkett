package com.izo.camp.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.ReviewMapper;
import com.izo.camp.vo.ReviewVO;

@Service
public class ReviewService {

	// function 기능
	
	@Autowired
	ReviewMapper reviewMapper;
	
	public List<ReviewVO> list(){
		return reviewMapper.list();
	}
	
	public ReviewVO getReviewIdx(int idx) {
		
		
		System.out.println("서비스 들어옴"+ idx);
	
		return reviewMapper.reviewIdx(idx);
		
	}

	
}
