package com.izo.camp.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CampInfoMapper {
	
	public int getTotalNum();
}
