package com.izo.camp.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.izo.camp.vo.AddmoneyVO;

@Mapper
public interface AddmoneyMapper {
	
	//카드 등록하기
	int registCard(AddmoneyVO vo);

	//카드번호 조회
	String searchCardNo(AddmoneyVO vo);
	
}
