package com.izo.camp.review;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.ReviewMapper;
import com.izo.camp.vo.JoayoVO;
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
	
	public int setReviewVO(ReviewVO vo) {
		
		System.out.println("vo.filename = " + vo.getFile());
		
		return reviewMapper.reviewInsert(vo);
		
	}
	


	public int delReview(int idx, String pwd, HashMap map) {
		
		System.out.println("========삭제삭제========서비스");
		
		return reviewMapper.reviewDelete(map);
		
	}
	
	public int readhitCount(int idx) {
		
		
		return reviewMapper.readhitCount(idx);
	}
	
	

	
	
	 
	public ReviewVO selectReview(int idx) {
	  
	return reviewMapper.reviewSelect(idx);
	
	}
	  
	public int updateReview(ReviewVO vo) {
	  
	return reviewMapper.reviewUpdate(vo); 
	
	}
	
	public int countbyJoayo(HashMap hashMap) {
		
		int count = reviewMapper.countbyJoayo(hashMap);
		
		return count;
	}
	
	public int create(HashMap hashMap) {
		
		int count = reviewMapper.create(hashMap);
		
		return count;
	}
	
	public int joayo_check(HashMap hashMap) {
		
		int count = reviewMapper.joayo_check(hashMap);
		
		return count;
	}
	
	public int joayo_check_cancel(HashMap hashMap) {
		
		int count = reviewMapper.joayo_check_cancel(hashMap);
		
		return count;
	}
	
	public JoayoVO read(HashMap hashMap) {
		
		JoayoVO vo = reviewMapper.read(hashMap);
		
		return vo;
		
	}
	
	public int deletebyIdx(int idx) {
		
		int count = reviewMapper.deletebyIdx(idx);
		
		return count;
	}
	
	public int deletebyId(String id) {
		
		int count = reviewMapper.deletebyId(id);
		
		return count;
	}
}
