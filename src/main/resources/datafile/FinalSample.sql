/*회원정보 샘플*/
INSERT INTO MEMBERTABLE
(IDX, ID, PWD, NAME, GENDER, EMAIL, HOMETEL, MOBILETEL, ADDR, BIRTH)
VALUES(SEQ_MEMBER.NEXTVAL, 'SampleID', '1111', '샘플아이디', '남', 'koreaId@naver.com', '032-232-2221', '010-3223-2231', '인천 부평구 시장로 7, 학원빌딩', 990412);



INSERT INTO MEMBERTABLE VALUES(
 SEQ_MEMBER.NEXTVAL,
 'APPLE',
 '1111',
 '사과',
 '남',
 'APPLE@APPLE.COM',
 '032-111-1111',
 '010-2222-2222',
 '인천광역시 중구 영종대로 188, 운서동 샘플아파트',
 '990503'
 );

 
INSERT INTO MEMBERTABLE VALUES(SEQ_MEMBER.NEXTVAL,'연안부두불나방2','1111','나방','남','SDFSDF@NAVER.COM','032-11-111','010-222-2341','서울특별시 강서구 강서로 195, (화곡동)','920301');

/*=============================================================================*/
/*//음식 샘플*/  /*되도록 FINALPRODUCTS.SQL 이용*/
INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '부대찌개', 13000, 300, 'foodNum01');

INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '삼겹살', 15000, 200, 'foodNum02');

INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '오삼불고기', 13000, 200, 'foodNum03');

INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '사천마라탕', 15000, 200, 'foodNum04');

INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '우삼겹 된장찌개', 12000, 300, 'foodNum05');

INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '부채살 스테이크', 17000, 200, 'foodNum06');

INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '밀푀유나베', 15000, 200, 'foodNum07');

INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '감바스 알아히요', 14000, 200, 'foodNum08');

INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '만두전골', 12000, 200, 'foodNum09');



SELECT * FROM PRODUCTTABLE p ;

/*=============================================================================*/




/*=============================================================================*/

INSERT INTO REVIEWTABLE VALUES(
SEQ_REVIEW.NEXTVAL,
'연안부두불나방2',
 '부대찌개',
 '부찌JMT',
 '간편해요',
 '부찌.JPG',
 '1234',
 SYSDATE,
 1,
 1
 );
 
/*=============================================================================*/
/*추가된 샘플*/

create sequence seq_addmoney;

create table addmoneytable(
	idx number(3) primary key,
	id varchar2(50),
	cardNo number(20),
	cvcNo number(3),
	simplePwd number(6),
	addedMoney number(7),
	totalMoney number(7),
	validCardDate number(4),
	addMoneyDate date default sysdate,
	FOREIGN KEY (id)
 		REFERENCES MEMBERTABLE (ID) ON DELETE CASCADE 
);


INSERT INTO ADDMONEYTABLE
(IDX, ID, CARDNO, CVCNO, SIMPLEPWD, ADDEDMONEY, totalMoney, VALIDCARDDATE, ADDMONEYDATE)
VALUES(seq_addmoney.nextval, 'SampleID', 1111222233334444, 111, 111111, 30000, 30000, 0124, sysdate);

SELECT * FROM ADDMONEYTABLE;


/*================================================================================*/
/*0702 변경된 내용*/
ALTER TABLE ADDMONEYTABLE MODIFY cardno varchar2(20);

INSERT INTO ADDMONEYTABLE
(IDX, ID, CARDNO, CVCNO, SIMPLEPWD, ADDEDMONEY, totalMoney, VALIDCARDDATE, ADDMONEYDATE)
VALUES(seq_addmoney.nextval, 'SampleID', '1111222233334444', 111, 111111, 50000, 50000, 0124, sysdate);

