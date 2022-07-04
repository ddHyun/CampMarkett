package com.izo.camp.vo;

import org.springframework.stereotype.Component;

@Component
public class PDetailVO {
//	idx NUMBER(3),
//	ProductID VARCHAR2(1000) PRIMARY KEY,
//	content VARCHAR2(2000),
//	weight VARCHAR2(200),
//	detailImg1 VARCHAR2(200),
//	detailImg2 VARCHAR2(200),
//	detailImg3 VARCHAR2(200),
//	detailImg4 VARCHAR2(200),
//	detailImg5 VARCHAR2(200)
	private Integer idx;
	private String productId;
	private String content;
	private String weight;
	private String detailImg1;
	private String detailImg2;
	private String detailImg3;
	private String detailImg4;
	private String detailImg5;
	
	public PDetailVO() {
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getDetailImg1() {
		return detailImg1;
	}

	public void setDetailImg1(String detailImg1) {
		this.detailImg1 = detailImg1;
	}

	public String getDetailImg2() {
		return detailImg2;
	}

	public void setDetailImg2(String detailImg2) {
		this.detailImg2 = detailImg2;
	}

	public String getDetailImg3() {
		return detailImg3;
	}

	public void setDetailImg3(String detailImg3) {
		this.detailImg3 = detailImg3;
	}

	public String getDetailImg4() {
		return detailImg4;
	}

	public void setDetailImg4(String detailImg4) {
		this.detailImg4 = detailImg4;
	}

	public String getDetailImg5() {
		return detailImg5;
	}

	public void setDetailImg5(String detailImg5) {
		this.detailImg5 = detailImg5;
	}
	
	
}
