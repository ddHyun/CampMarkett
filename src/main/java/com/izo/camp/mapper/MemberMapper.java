package com.izo.camp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.izo.camp.vo.MemberVO;

@Mapper
public interface MemberMapper {

	//회원 전체목록
	@Select("select * from membertable")
	public List<MemberVO> list();
	
	//MemberMapper.xml의  id와 메서드명 동일하게 만들어서 쿼리문 작성하기
	public List<MemberVO> memberlist();
	
	//아이디목록
	@Select("select id from membertable")
	public List<String> idList();
	
	//이름, 생일 일치하는 idx
	public int memberIdx(MemberVO vo);
	
	//아이디, 비밀번호 일치하는 idx
	public int memberIdxFromId(MemberVO vo);
}
