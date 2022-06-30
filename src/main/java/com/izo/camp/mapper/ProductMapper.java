package com.izo.camp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.izo.camp.vo.ProductVO;

@Mapper
public interface ProductMapper {
	
	@Select("SELECT * FROM ProductTABLE")
	public List<ProductVO> getList();
	
	@Select("SELECT * FROM ProductTABLE WHERE idx = #{idx}")
	public ProductVO getOne(int idx);
	
	public int getPrice(String productId);
}
