package com.izo.camp.market;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.ProductMapper;
import com.izo.camp.vo.ProductVO;

@Service
public class MarketService {
	
	@Autowired
	ProductMapper productMapper;
	
	//총 목록을 가져옴
	public List<ProductVO> getList(){
		return productMapper.getList();
	}

	public ProductVO getProductByIdx(int idx) {
		return productMapper.getOne(idx);
	}
}
