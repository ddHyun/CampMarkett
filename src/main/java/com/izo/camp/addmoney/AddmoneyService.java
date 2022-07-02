package com.izo.camp.addmoney;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.AddmoneyMapper;
import com.izo.camp.vo.AddmoneyVO;

@Service
public class AddmoneyService {
	//function
	
	@Autowired
	AddmoneyMapper addmoneyMapper;

	//카드 등록하기
	public int registCard(AddmoneyVO vo) {
		// TODO Auto-generated method stub
		return addmoneyMapper.registCard(vo);
	}

	//카드번호 조회
	public String searchCardNo(AddmoneyVO vo) {
		// TODO Auto-generated method stub
		return addmoneyMapper.searchCardNo(vo);
	}
	
	
}
