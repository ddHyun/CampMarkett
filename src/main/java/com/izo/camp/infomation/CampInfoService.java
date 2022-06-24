package com.izo.camp.infomation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.CampInfoMapper;

@Service
public class CampInfoService {

	@Autowired
	CampInfoMapper campInfoMapper;
	
	public void hasCamping() {
		System.out.println("---------------");
		System.out.println(campInfoMapper.getTotalNum());
		insertInfo();
	}
	
	public void insertInfo() {
		//테이블이 비어있다면 실행X
		if(campInfoMapper.getTotalNum() != 0) {
			return;
		}
		else {
			
			ClassPathResource resource = new ClassPathResource("/datafile/campArea.json");
			System.out.println(resource.getFilename());
			
		}
	}
}
