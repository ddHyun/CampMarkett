package com.izo.camp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.izo.camp.vo.DeptVO;

@Mapper
public interface DeptMapper {
	
	public List<DeptVO> deptList(); 
	
	@Select("SELECT * FROM DEPT")
	public List<DeptVO> dept();
}
