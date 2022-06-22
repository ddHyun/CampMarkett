package com.izo.camp.vo;

import org.springframework.stereotype.Component;

//테스트 vo 입니다 참고하세요
@Component
public class DeptVO {
	
	private int deptno;
	private String dname;
	private String loc;
	
	public DeptVO() {
	}

	public int getDeptno() {
		return deptno;
	}

	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	
}
