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

	//아이디와 일치하는 충전테이블 정보 가져오기
	public AddmoneyVO getMoneyInfo(String id) {
		// TODO Auto-generated method stub
		System.out.println("머니서비스 들어옴");
		AddmoneyVO vo = addmoneyMapper.getMoneyInfo(id);
		
		return addmoneyMapper.getMoneyInfo(id);
	}

	//아이디와 결제비밀번호 일치확인
	public int getIdxforMoney(AddmoneyVO vo) {
		// TODO Auto-generated method stub
		return addmoneyMapper.getIdxforMoney(vo);
	}
	
	//충전하기
	public int addMoney(AddmoneyVO vo) {
		// TODO Auto-generated method stub
		System.out.println(vo.getValidcarddate());
		return addmoneyMapper.addMoney(vo);
	}
	
	//아이디에 등록된 잔고 가져오기
	public int searchId(String id) {
		// TODO Auto-generated method stub
		return addmoneyMapper.searchId(id);
	}
	
	//아이디 정보 있는지 확인
	public int getNumber(String id) {
		// TODO Auto-generated method stub
		return addmoneyMapper.getNumber(id);
	}
	
	
}
