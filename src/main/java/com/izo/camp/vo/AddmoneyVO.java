package com.izo.camp.vo;

import org.springframework.stereotype.Component;

@Component
public class AddmoneyVO {
	private int idx, cardno, cvcno, simplepwd, addedmoney, totalmoney, validcarddate;
	private String id, addmoneydate;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getCardno() {
		return cardno;
	}
	public void setCardno(int cardno) {
		this.cardno = cardno;
	}
	public int getCvcno() {
		return cvcno;
	}
	public void setCvcno(int cvcno) {
		this.cvcno = cvcno;
	}
	public int getSimplepwd() {
		return simplepwd;
	}
	public void setSimplepwd(int simplepwd) {
		this.simplepwd = simplepwd;
	}
	public int getAddedmoney() {
		return addedmoney;
	}
	public void setAddedmoney(int addedmoney) {
		this.addedmoney = addedmoney;
	}
	public int getTotalmoney() {
		return totalmoney;
	}
	public void setTotalmoney(int totalmoney) {
		this.totalmoney = totalmoney;
	}
	public int getValidcarddate() {
		return validcarddate;
	}
	public void setValidcarddate(int validcarddate) {
		this.validcarddate = validcarddate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAddmoneydate() {
		return addmoneydate;
	}
	public void setAddmoneydate(String addmoneydate) {
		this.addmoneydate = addmoneydate;
	}	
}
