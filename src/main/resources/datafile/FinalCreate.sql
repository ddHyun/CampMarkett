

/*==========================================================*/
CREATE SEQUENCE SEQ_MEMBER;
/*생년월일 추가했습니다.*/
CREATE TABLE MEMBERTABLE(
		IDX NUMBER(3),
		ID VARCHAR2(1000) PRIMARY KEY,
		PWD VARCHAR2(1000),
		NAME VARCHAR2(1000),
		GENDER VARCHAR2(50),
		EMAIL VARCHAR2(1000), 
		HOMETEL VARCHAR2(1000),
		MOBILETEL VARCHAR2(1000),
		ADDR VARCHAR2(2000),
		BIRTH NUMBER(6)
);

/*==========================================================*/
CREATE SEQUENCE SEQ_Product;

CREATE TABLE ProductTABLE(
	idx NUMBER(3),
	ProductID VARCHAR2(1000) PRIMARY KEY,
	Price NUMBER(10),
	Stock NUMBER(3),
	imgName VARCHAR2(100)
); 

/*==========================================================*/


CREATE SEQUENCE SEQ_Order;

CREATE TABLE OrderTable(
	OrderIdx NUMBER(5) PRIMARY KEY,
	OrderNum NUMBER(5),
	MemberID VARCHAR2(100),
	ProductID VARCHAR2(1000),
	pcs NUMBER(3),
	TotalPrice NUMBER(7),
	OrderDate DATE DEFAULT SYSDATE,
	FOREIGN KEY (MemberID)
 		   REFERENCES MEMBERTABLE (ID) ON DELETE CASCADE,
		FOREIGN KEY (ProductID)
 		   REFERENCES ProductTABLE(ProductID) ON DELETE CASCADE
);


/*==========================================================*/

CREATE SEQUENCE SEQ_REVIEW;
CREATE TABLE ReviewTABLE(
	IDX NUMBER(30) PRIMARY KEY,
	MemberID VARCHAR2(1000),
	ProductID VARCHAR2(1000),
	TITLE VARCHAR2(100),
	CONTENT CLOB,
	FILENAME VARCHAR2(1000),
	PWD VARCHAR2(1000),
	REGDATE DATE DEFAULT SYSDATE,
	READHIT NUMBER(3) DEFAULT 0,
	joayo NUMBER(3) DEFAULT 0,
	FOREIGN KEY (MemberID)
 	REFERENCES MEMBERTABLE (ID) ON DELETE CASCADE,
	FOREIGN KEY (ProductID)
 	REFERENCES ProductTABLE(ProductID) ON DELETE CASCADE
);



/*==========================================================*/


CREATE SEQUENCE SEQ_CampingArea;

CREATE TABLE CAMPINGTABLE
   (	IDX NUMBER(5,0) PRIMARY KEY, 
	NAME VARCHAR2(2000), 
	LATITUDE NUMBER(10,5), 
	LONGITUDE NUMBER(10,5), 
	ADDRESS VARCHAR2(2000), 
	TELL VARCHAR2(2000),
	imgName VARCHAR2(1000)
	);
	
	



/*==========================================================*/

/*장바구니 테이블*/
CREATE SEQUENCE seq_basket;
/*제약조건 ( 외래키 미지정 ) */
CREATE TABLE basketTable(
	idx number(6) PRIMARY KEY,
	memberID VARCHAR2(50),
	productID VARCHAR2(1000),
	pcs NUMBER(3),
	price NUMBER(10),
	totalPrice NUMBER(10)
);

/*==========================================================*/

create sequence seq_addmoney;

create table addmoneytable(
	idx number(3) primary key,
	id varchar2(50),
	cardNo varchar2(20),
	cvcNo number(3),
	simplePwd number(6),
	addedMoney number(7),
	totalMoney number(7),
	validCardDate number(4),
	addMoneyDate date default sysdate,
	FOREIGN KEY (id)
 		REFERENCES MEMBERTABLE (ID) ON DELETE CASCADE 
);


/*==========================================================*/ 
CREATE SEQUENCE SEQ_P_Detail;

CREATE TABLE P_DetailTABLE(
	idx NUMBER(3),
	ProductID VARCHAR2(1000) PRIMARY KEY,
	content VARCHAR2(2000),
	weight VARCHAR2(200),
	detailImg1 VARCHAR2(200),
	detailImg2 VARCHAR2(200),
	detailImg3 VARCHAR2(200),
	detailImg4 VARCHAR2(200),
	detailImg5 VARCHAR2(200)
); 