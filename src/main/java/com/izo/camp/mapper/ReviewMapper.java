package com.izo.camp.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.izo.camp.vo.JoayoVO;
import com.izo.camp.vo.ReviewVO;

@Mapper
public interface ReviewMapper {

	@Select("SELECT * FROM REVIEWTABLE")
	public List<ReviewVO> list(); 
	
	// ReviewMapper.xml 의 id와 동일해야함
	public List<ReviewVO> reviewlist();

	
	public ReviewVO reviewIdx(int idx);

	//insert는 건수로 받기때문에 int
	public int reviewInsert(ReviewVO vo);
	
	// 게시글 삭제
	public int reviewDelete(HashMap map);
	
	// 조회수 증가
	public int readhitCount(int idx);
	
	// 게시글 수정 해당건 조회
	public ReviewVO reviewSelect(int idx);
	  
	// 게시글 수정
	public int reviewUpdate(ReviewVO vo);
	
	
}
