CREATE TABLE CAMPINGTABLE
   (	"IDX" NUMBER(5,0) PRIMARY KEY, 
	"NAME" VARCHAR2(2000), 
	"LATITUDE" NUMBER(10,5), 
	"LONGITUDE" NUMBER(10,5), 
	"ADDRESS" VARCHAR2(2000), 
	"TELL" VARCHAR2(2000)
	);
	
SELECT * FROM campingTable;

SELECT * FROM MEMBERTABLE;