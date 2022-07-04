package com.izo.camp.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.izo.camp.vo.PDetailVO;

@Mapper
public interface PDetailMapper {

	public PDetailVO getPdetailById(String productId);
	
}
