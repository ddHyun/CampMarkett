package com.izo.camp.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.MemberMapper;
import com.izo.camp.vo.MemberVO;

@Service
public class MemberService {
	//function
	
	@Autowired
	MemberMapper memberMapper;
	
	//회원 전체목록
	public List<MemberVO> list(){
		return memberMapper.list();
	}
	
	//아이디목록
	public List<String> idList() {
		return memberMapper.idList();
	}
	
//	컨트롤러 -> 서비스 : 메서드명(변수)의 변수는 컨트롤러에서 보낸 타입과 일치
//  매퍼 -> 서비스  : 리턴과 메서드 타입 일치
	//이름, 생일 일치하는 idx
	public int getMemberIdx(MemberVO vo){
		return memberMapper.memberIdx(vo);
	}
	
	//아이디, 비번 일치하는 idx
	public int getIdxFromId(MemberVO vo) {
		return memberMapper.memberIdxFromId(vo);
	}
	
	
}
