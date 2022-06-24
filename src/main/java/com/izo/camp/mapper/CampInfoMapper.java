package com.izo.camp.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.izo.camp.vo.CampInfoVO;

@Mapper
public interface CampInfoMapper {
	
	public int getTotalNum();

	public void addNewCamp(CampInfoVO campInfoVO);
	
	@Select("SELECT * FROM CAMPINGTABLE")
	public CampInfoVO checkOne();
}
