package com.izo.camp.vo;

import org.springframework.stereotype.Component;

@Component
public class ProductVO {
//	idx NUMBER(3),
//	ProductID VARCHAR2(1000) PRIMARY KEY,
//	Price NUMBER(10),
//	Stock NUMBER(3)
	
	private Integer idx;
	private String productId;
	private Integer price;
	private Integer stock;
	
	public ProductVO() {
		// TODO Auto-generated constructor stub
	}
	public Integer getIdx() {
		return idx;
	}
	public void setIdx(Integer idx) {
		this.idx = idx;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
}
