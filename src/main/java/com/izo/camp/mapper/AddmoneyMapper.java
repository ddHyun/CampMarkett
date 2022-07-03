package com.izo.camp.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.izo.camp.vo.AddmoneyVO;

@Mapper
public interface AddmoneyMapper {
	
	//카드 등록하기
	int registCard(AddmoneyVO vo);

	//카드번호 조회
	String searchCardNo(AddmoneyVO vo);

	//세션에 저장된 id로 충전테이블 정보 가져오기
	AddmoneyVO getMoneyInfo(String id);

	//아이디와 결제비밀번호 일치 확인
	int getIdxforMoney(AddmoneyVO vo);

	//충전하기
	int addMoney(AddmoneyVO vo);
	
}
