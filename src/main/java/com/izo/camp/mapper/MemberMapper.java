package com.izo.camp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.izo.camp.vo.MemberVO;

@Mapper
public interface MemberMapper {

	@Select("select * from membertable")
	public List<MemberVO> list();
	
	//MemberMapper.xml의  id와 메서드명 동일하게 만들어서 쿼리문 작성하기
	public List<MemberVO> memberlist();
	
//	@Select("select id from membertable")
	public String checkId();
}
