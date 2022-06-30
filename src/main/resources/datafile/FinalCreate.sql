

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

CREATE TABLE OrderTABLE (
	OrderIdx NUMBER(3) PRIMARY KEY,
	MemberID VARCHAR2(100),
	ProductID VARCHAR2(1000),
	OrderDate DATE DEFAULT SYSDATE,
	Quantity NUMBER(3),
	TotalPrice NUMBER(7),
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
create sequence seq_loadmoney;

create table loadmoneytable(
	idx number(3) primary key,
	id varchar2(50),
	cardno number(20),
	money number(7),
	adddate date default sysdate,
	FOREIGN KEY (id)
 		   REFERENCES MEMBERTABLE (ID) ON DELETE CASCADE
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