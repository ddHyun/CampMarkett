package com.izo.camp.infomation;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	//테이블에 추가 
	public void hasCamping() {
		System.out.println("---------------");
		if(campInfoMapper.getTotalNum() == 0) {
			insertInfo();
		}else {
			System.out.println("CampInfo 테이블이 이미 있습니다");
		}
	}
	
	//테이블이 비어있다면 이 테이블을 채워 넣어준다. 
	//JSON -> 테이블 만들기
	public void insertInfo() {
		//테이블이 비어있다면 실행X
		JSONParser jsonParser = new JSONParser();
		
		if(campInfoMapper.getTotalNum() != 0) {
			
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
	
	
	//나의 위치 받아오기 
	public Map getKakaoApiFromAddress(String roadFullAddr) {
	    String apiKey = "1c7ac58832774fc482b8cc40b799e103";
	    String apiUrl = "https://dapi.kakao.com/v2/local/search/address.json";
	    Map<String, Double> resultMap = new HashMap<String, Double>();
	    
	    /*
	     * MemberMapper를 통해서 받던지 지금 로그인된 상태의 지역에서 받아서 사용 
	     * 로그인이 되지 않은 상태에서는 어떻게 할까? 
	     * 지도를 입력해주세요 혹은 로그인후  이용해주세요 ? 지역을 설정해주세요 ? 
	     */
	    
	    try {
	        roadFullAddr = "인천 중구 영종대로 190, 이곳저곳아파트";
	        roadFullAddr = roadFullAddr.substring(0,roadFullAddr.indexOf(","));
	        roadFullAddr = URLEncoder.encode(roadFullAddr, "UTF-8");
	        
	        String addr = apiUrl + "?query=" + roadFullAddr;

	        URL url = new URL(addr);
	        URLConnection conn = url.openConnection();
	        conn.setRequestProperty("Authorization", "KakaoAK " + apiKey);

	        BufferedReader rd = null;
	        rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
	        StringBuffer docJson = new StringBuffer();

	        String line;

	        while ((line=rd.readLine()) != null) {
	            docJson.append(line);
	        }
	        JSONParser parser = new JSONParser();
	        Object obj = parser.parse( docJson.toString() );
	        JSONObject jobj = (JSONObject)obj;
	        
	        JSONArray fieidsList = (JSONArray)jobj.get("documents");
	        JSONObject fieid = (JSONObject)fieidsList.get(0);
	        String address = (String)fieid.get("address_name");
	        System.out.println(address);
	        
	        //나의 경도
	        String x = (String)fieid.get("x");
	        //나의 위도
	        String y = (String)fieid.get("y");
	        resultMap.put("lon", Double.parseDouble(x));
	        resultMap.put("lat", Double.parseDouble(y));
	        
	        rd.close();

	    } catch (UnsupportedEncodingException e) {
	        e.printStackTrace();
	    } catch (MalformedURLException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
	    return resultMap;
	}
	
	public List<CampInfoVO> getNearCampingArea(){

		return campInfoMapper.nearCampArea(getKakaoApiFromAddress(""));
	}
}
