package com.izo.camp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.izo.camp.vo.BasketVO;

@Mapper
public interface BasketMapper {
	
	public List<BasketVO> getBasketById(String loginId);

	public BasketVO findBasket(BasketVO basketVO);

	public int upDateBasket(BasketVO vo);

	public int insertBasket(BasketVO basketVO);

	public int deleteProduct(BasketVO basketVO);

	public int changePcsPM(BasketVO basketVO);

	public int getTotalPrice(BasketVO basketVO);
}
