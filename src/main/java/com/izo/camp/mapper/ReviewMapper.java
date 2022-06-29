package com.izo.camp.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.izo.camp.vo.JoayoVO;
import com.izo.camp.vo.ReviewVO;

@Mapper
public interface ReviewMapper {

	@Select("SELECT * FROM REVIEWTABLE")
	public List<ReviewVO> list(); 
	
	// ReviewMapper.xml 의 id와 동일해야함
	public List<ReviewVO> reviewlist();

	
	public ReviewVO reviewIdx(int idx);

	//insert는 건수로 받기때문에 int
	public int reviewInsert(ReviewVO vo);
	

	public int reviewDelete(HashMap map);
	
	public int readhitCount(int idx);


	
	
	/*애초에 수정할거면 글을 안쓰는게 맞습니다. 그래서 없앤겁니다 어려워서 뺀거 아닙니다.
	 * public ReviewVO reviewSelect(int idx);
	 * 
	 * public int reviewUpdate(ReviewVO vo);
	 */
}
