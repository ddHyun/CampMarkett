package com.izo.camp.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.izo.camp.vo.OrderVO;

@Mapper
public interface OrderMapper {

	public int insertOrder(OrderVO orderVO);

}
