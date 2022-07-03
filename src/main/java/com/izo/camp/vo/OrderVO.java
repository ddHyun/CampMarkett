package com.izo.camp.vo;

import org.springframework.stereotype.Component;

@Component
public class OrderVO {

	//구매 관련 DB 수정 구현
//	OrderIdx NUMBER(5) PRIMARY KEY,
//	OrderNum NUMBER(5),
//	MemberID VARCHAR2(100),
//	ProductID VARCHAR2(1000),
//	pcs NUMBER(3),
//	TotalPrice NUMBER(7),
//	OrderDate DATE DEFAULT SYSDATE,
	
	private Integer orderIdx;
	private Integer orderNum;
	private String memberId;
	private String productId;
	private Integer pcs;
	private Integer totalPrice;
	private String orderDate;
	public OrderVO() {
		// TODO Auto-generated constructor stub
	}
	public Integer getOrderIdx() {
		return orderIdx;
	}
	public void setOrderIdx(Integer orderIdx) {
		this.orderIdx = orderIdx;
	}
	public Integer getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(Integer orderNum) {
		this.orderNum = orderNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public Integer getPcs() {
		return pcs;
	}
	public void setPcs(Integer pcs) {
		this.pcs = pcs;
	}
	public Integer getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	
}
