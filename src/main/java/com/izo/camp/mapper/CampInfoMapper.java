package com.izo.camp.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.izo.camp.vo.CampInfoVO;

@Mapper
public interface CampInfoMapper {
	
	//등록된 캠핑장 갯수 가져오기
	public int getTotalNum();
	
	//다시 테이블에 정보넣기 
	public void addNewCamp(CampInfoVO campInfoVO);
	
	//index로 캠핑장 정보 받아오기
	public CampInfoVO getCampingByIdx(Integer idx);
	
	@Select("SELECT * FROM CAMPINGTABLE")
	public CampInfoVO checkOne();
	
	//가까운 거리의 캠핑장 목록 가져오기
	public List<CampInfoVO> nearCampArea(Map map);
	
	
	
}
