package com.izo.camp.vo;

public class JoayoVO {

	private String memberid;
	private int idx, joayo;
	
	
	@Override
	public String toString() {
		return "JoayoVO [memberid=" + memberid + ", idx=" + idx + ", joayo=" + joayo + "]";
	}
	
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getJoayo() {
		return joayo;
	}
	public void setJoayo(int joayo) {
		this.joayo = joayo;
	}
	
}
