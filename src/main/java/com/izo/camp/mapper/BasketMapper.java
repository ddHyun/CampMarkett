package com.izo.camp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.izo.camp.vo.BasketVO;

@Mapper
public interface BasketMapper {
	
	public List<BasketVO> getBasketById(String loginId);
}
