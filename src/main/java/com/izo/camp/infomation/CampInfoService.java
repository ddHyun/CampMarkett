package com.izo.camp.infomation;

import java.io.FileReader;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.CampInfoMapper;
import com.izo.camp.vo.CampInfoVO;

@Service
public class CampInfoService {

	@Autowired
	CampInfoMapper campInfoMapper;
	
	
	public void hasCamping() {
		System.out.println("---------------");
		System.out.println(campInfoMapper.getTotalNum());
		insertInfo();
	}
	
	//테이블이 비어있다면 이 테이블을 채워 넣어준다. 
	//JSON -> 테이블 만들기
	public void insertInfo() {
		//테이블이 비어있다면 실행X
		JSONParser jsonParser = new JSONParser();
		
		if(campInfoMapper.getTotalNum() != 0) {
			
			CampInfoVO campInfoVO = campInfoMapper.checkOne();
			System.out.println(campInfoVO.getIdx());
			System.out.println(campInfoVO.getName());
			System.out.println(campInfoVO.getLatitude());
			System.out.println(campInfoVO.getLongitude());
			System.out.println(campInfoVO.getAddress());
			System.out.println(campInfoVO.getTell());
			CampInfoVO campInfoVO2 = campInfoVO;
			campInfoVO2.setIdx(2);
			System.out.println(campInfoVO.getIdx());
			campInfoMapper.addNewCamp(campInfoVO2);
			return;
		}
		else {
//			
			ClassPathResource resource = new ClassPathResource("/datafile/campArea.json");
			System.out.println(resource.getFilename());
			// 1. 파일을 parse해서 obj 형태로 받는다.
			try {
				Object obj = jsonParser.parse(new FileReader(resource.getFile()));
			// 2. jsonobject 로 형변환 해준다.
				JSONObject jsonObject = (JSONObject)obj;
			// 3. jsonObject에서 원하는 정보를 찾아온다.
			// 	  String fieldName = (String)jsonObject.get("key값");
			// 4. Array 형식면 JSONArray형식을 바꿔준다.
				JSONArray fieidsList = (JSONArray)jsonObject.get("fields");
			// 5. Array 속에서 원하는 정보를 가져온다.
				JSONObject jsonObject2 = (JSONObject)fieidsList.get(0);
				String name = (String)jsonObject2.get("id");
				System.out.println(name);
				System.out.println(fieidsList.size());
				//JSONObject campInfoArr = (JSONObject)campList.get(1);
			
			//실제 사용부 
				JSONArray campList = (JSONArray)jsonObject.get("records");
				for(Object campObj : campList) {
					JSONObject camp = (JSONObject)campObj;
					System.out.println(camp.get("야영(캠핑)장명"));
					//insert 할 CampInfoVO 생성
					CampInfoVO campInfoVO = new CampInfoVO();
					//이름
					campInfoVO.setName((String)camp.get("야영(캠핑)장명"));
					//위도 ,경도
					campInfoVO.setLatitude(Double.parseDouble((String)camp.get("위도")));
					campInfoVO.setLongitude(Double.parseDouble((String)camp.get("경도")));
					//주소 전화번호
					String address = (String)camp.get("소재지도로명주소");
					if(address==null) {
						address=(String)camp.get("소재지지번주소");
					}
					
					campInfoVO.setAddress(address);
					campInfoVO.setTell((String)camp.get("야영장전화번호"));
					
					System.out.println(campInfoVO.getLatitude());
					
					campInfoMapper.addNewCamp(campInfoVO);
				}
			
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
}
