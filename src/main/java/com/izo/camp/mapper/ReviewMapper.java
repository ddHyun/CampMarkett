package com.izo.camp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.izo.camp.vo.ReviewVO;

@Mapper
public interface ReviewMapper {

	@Select("SELECT * FROM REVIEWTABLE")
	public List<ReviewVO> list(); 
	
	// ReviewMapper.xml 의 id와 동일해야함
	public List<ReviewVO> reviewlist();

	
	public ReviewVO reviewIdx(int idx);

	
}
