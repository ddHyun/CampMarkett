package com.izo.camp.vo;

import org.springframework.stereotype.Component;

@Component
public class CampInfoVO {
//	idx number(5) PRIMARY KEY,
//	name varchar2(2000),
//	latitude number(10,5),
//	longitude number(10,5),
//	address VARCHAR2(2000),
//	tell VARCHAR2(2000)
	
	private int idx;
	private String name;
	private double latitude;
	private double logitude;
	private String address;
	private String tell;
	
	public CampInfoVO() {
	
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLogitude() {
		return logitude;
	}

	public void setLogitude(double logitude) {
		this.logitude = logitude;
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
