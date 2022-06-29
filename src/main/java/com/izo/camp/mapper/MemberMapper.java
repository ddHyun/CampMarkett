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
	
	@Select("select * from membertable where idx=#{idx}")
	public MemberVO userInfo(int idx);
	
	//MemberMapper.xml의  id와 메서드명 동일하게 만들어서 쿼리문 작성하기
	public List<MemberVO> memberlist();
	
	//아이디 idx	
	public int idIdx(String id);
	
	//이름, 이메일 일치하는 idx
	public int memberIdx(MemberVO vo);
	
	//아이디, 비밀번호 일치하는 idx
	public int memberIdxFromId(MemberVO vo);
	
	//회원정보 추가하기
	public int insertInfo(MemberVO vo);
	
	//아이디 찾기
	public String searchID(MemberVO vo);
	
	//비밀번호 변경하기
	public int changePwd(MemberVO vo);
}
