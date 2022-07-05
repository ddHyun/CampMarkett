package com.izo.camp.market;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.BasketMapper;
import com.izo.camp.mapper.ProductMapper;
import com.izo.camp.vo.BasketVO;

@Service
public class BasketService {
	
	@Autowired
	BasketMapper basketMapper;
	@Autowired
	ProductMapper productMapper;
	
	public List<BasketVO> getBasket(String loginId){
		
		return 	basketMapper.getBasketById(loginId);
	}
	
	//장바구니에 존재하는지 확인 
	public BasketVO hasBasket(BasketVO basketVO) {
		//장바구니에 존재하면 true
		return basketMapper.findBasket(basketVO);
	}
	
	
	public void addBasket(BasketVO basketVO) {
		//장바구니에 있는지 확인 
		BasketVO vo = basketMapper.findBasket(basketVO);
		int price = productMapper.getPrice(basketVO.getProductId());
		if(vo!=null) {
			//장바구니에 존재 하므로 
			//장바구니 갯수  + 1 
			vo.setPcs(1);
			basketMapper.changePcsPM(vo);
		}else {
			//장바구니에 없으므로 추가
			basketVO.setPrice(price);
			basketVO.setTotalPrice(price);
			basketMapper.insertBasket(basketVO);
		}
	}

	public boolean deleteProduct(BasketVO basketVO) {
			basketMapper.deleteProduct(basketVO);
		return true;
	}

	//+ - 버튼을 눌렀을 때 
	public int changePcs(BasketVO basketVO) {
		basketMapper.changePcsPM(basketVO);
		
		return basketMapper.getTotalPrice(basketVO);
	}

	public void clearBasket(String loginId) {
		basketMapper.removeBasket(loginId);
	}
	
}
