package com.izo.camp.market;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.BasketMapper;
import com.izo.camp.vo.BasketVO;

@Service
public class BasketService {
	
	@Autowired
	BasketMapper basketMapper;
	
	public List<BasketVO> getBasket(String loginId){
		
		
		
		return 	basketMapper.getBasketById(loginId);
	}
	
}
