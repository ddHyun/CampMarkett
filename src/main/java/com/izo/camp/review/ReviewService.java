package com.izo.camp.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.ReviewMapper;

@Service
public class ReviewService {

	// function 개념
	@Autowired
	ReviewMapper reviewMapper;
	
	
	
}
