package com.izo.camp.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

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
	
	//등록된 카드 유무 확인
//	@Select("SELECT nvl(TOTALMONEY, 0) FROM ADDMONEYTABLE RIGHT OUTER JOIN dual on id=#{id}")
	@Select("SELECT nvl(max(TOTALMONEY), 0) FROM ADDMONEYTABLE RIGHT OUTER JOIN dual on id=#{id}")
	int searchId(String id);

	//아이디정보 있는지 확인
	@Select("SELECT count(idx) FROM ADDMONEYTABLE WHERE id=#{id}")
	int getNumber(String id);

	public int minusPoint(AddmoneyVO addmoneyVO);
	
}
