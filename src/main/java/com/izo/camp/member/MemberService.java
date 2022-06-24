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
	
	public List<MemberVO> list(){
		return memberMapper.list();
	}
	
	public List<String> idList() {
		return memberMapper.idList();
	}
}
