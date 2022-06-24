package com.izo.camp.vo;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
public class CampInfoVO {
//	idx number(5) PRIMARY KEY,
//	name varchar2(2000),
//	latitude number(10,5),
//	longitude number(10,5),
//	address VARCHAR2(2000),
//	tell VARCHAR2(2000)
	
	private Integer idx;
	private String name;
	private Double latitude;
	private Double longitude;
	private String address;
	private String tell;
	
	public CampInfoVO() {
	
	}

	public Integer getIdx() {
		return idx;
	}

	public void setIdx(Integer idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTell() {
		return tell;
	}

	public void setTell(String tell) {
		this.tell = tell;
	}

	
	
}
