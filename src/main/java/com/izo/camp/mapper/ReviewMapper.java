package com.izo.camp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.izo.camp.vo.ReviewVO;

@Mapper
public interface ReviewMapper {

	public List<ReviewVO> reviewlist(); 
	
	@Select("SELECT * FROM REVIEWTABLE")
	public List<ReviewVO> review();
	
}
