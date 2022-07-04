/*상품 1 */
INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '바베큐폭립', 40500, 3, 'ribMain');
/*================================상품 디테일 ============================*/
INSERT INTO TEST_PM.P_DETAILTABLE
(IDX, PRODUCTID, CONTENT, WEIGHT, DETAILIMG1, DETAILIMG2, DETAILIMG3, DETAILIMG4, DETAILIMG5)
VALUES(SEQ_P_Detail.NEXTVAL, '바베큐폭립', '독일산 참나무로 훈연한 부드러운 등갈비와 특제 바베큐 소스의 향연', '450g', 
'rib1.jpg', 'rib2.jpg', 'rib3.jpg', 'rib4.jpg', 'rib5.jpg');


/*상품 2 */
INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '부대찌개', 13000, 300, 'boodeMain');
/*================================상품 디테일 ============================*/
INSERT INTO TEST_PM.P_DETAILTABLE
(IDX, PRODUCTID, CONTENT, WEIGHT, DETAILIMG1, DETAILIMG2, DETAILIMG3, DETAILIMG4, DETAILIMG5)
VALUES(SEQ_P_Detail.NEXTVAL, '부대찌개', '입맛 당기는 짭조름한 건더기가 가득해 자주 찾게 되는 부대찌개. 간편한 조리로 맛있는 부대찌개를 만들 수 있는 밀 키트를 추천해 드려요.', '868g',
'boode01.jpg', 'boode02.jpg', 'boode03.jpg', 'boode04.jpg', 'boode05.jpg');

/*상품 3 */
INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '감바스 알 아히요', 11900, 3, 'shripmMain');
/*================================상품 디테일 ============================*/
INSERT INTO TEST_PM.P_DETAILTABLE
(IDX, PRODUCTID, CONTENT, WEIGHT, DETAILIMG1, DETAILIMG2, DETAILIMG3, DETAILIMG4, DETAILIMG5)
VALUES(SEQ_P_Detail.NEXTVAL, '감바스 알 아히요', '스페인 분위기 그대로 담은 감바스는 올리브 오일에 마늘과 베트남 고추의 향을 입혀 
새우를 넣고 끓여 담백하면서 풍성한 맛이 일품', '2인분', 
'shrimp1.jpg', 'shrimp2.jpg', 'shrimp3.jpg', 'shrimp4.jpg', 'shrimp5.jpg');


/*상품 4 */
INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '사천마라탕', 15000, 200, 'maraMain');
/*================================상품 디테일 ============================*/
INSERT INTO TEST_PM.P_DETAILTABLE
(IDX, PRODUCTID, CONTENT, WEIGHT, DETAILIMG1, DETAILIMG2, DETAILIMG3, DETAILIMG4, DETAILIMG5)
VALUES(SEQ_P_Detail.NEXTVAL, '사천마라탕', '독특한 향신료로 입안을 얼얼하게 사로잡는 사천요리 마라탕. 매콤한 국물 속 여러 재료를 골라 먹는 재미가 있는 별미예요.', '380g', 
'mara01.jpg', 'mara02.jpg', 'mara03.jpg', 'mara04.jpg', 'mara05.jpg');




/*상품 5 */
INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '스테이크 플래터',35900, 3, 'steakMain');
/*================================상품 디테일 ============================*/
INSERT INTO TEST_PM.P_DETAILTABLE
(IDX, PRODUCTID, CONTENT, WEIGHT, DETAILIMG1, DETAILIMG2, DETAILIMG3, DETAILIMG4, DETAILIMG5)
VALUES(SEQ_P_Detail.NEXTVAL, '스테이크 플래터', '육즙이 풍부한 양갈비와 부채살이 쫄깃한 식감과 고소한 감칠맛을 선사하고
그린빈, 감자 등으로 구성된 풍성한 가니쉬도 곁들여 캠핑장에서도 근사한 한 끼 식사를 완성해보세요!', '1068g', 
'steak1.jpg', 'steak2.jpg', 'steak3.jpg', 'steak4.jpg', 'steak5.jpg');


/*상품 6 */
INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '만두전골', 12000, 200, 'mandooMain');
/*================================상품 디테일 ============================*/
INSERT INTO TEST_PM.P_DETAILTABLE
(IDX, PRODUCTID, CONTENT, WEIGHT, DETAILIMG1, DETAILIMG2, DETAILIMG3, DETAILIMG4, DETAILIMG5)
VALUES(SEQ_P_Detail.NEXTVAL, '만두전골', '담백하고 구수한 감칠맛이 일품인 만두전골이에요. 만두와 소고기, 아삭한 알배추 등이 어우러져 다채로운 식감을 선사하죠.', '968g',
'mandoo01.jpg', 'mandoo02.jpg', 'mandoo03.jpg', 'mandoo04.jpg', 'mandoo05.jpg');



/*상품 7 */
INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '토마호크스테이크', 75900, 3, 'tomaMain');
/*================================상품 디테일 ============================*/
INSERT INTO TEST_PM.P_DETAILTABLE
(IDX, PRODUCTID, CONTENT, WEIGHT, DETAILIMG1, DETAILIMG2, DETAILIMG3, DETAILIMG4, DETAILIMG5)
VALUES(SEQ_P_Detail.NEXTVAL, '토마호크스테이크', '소갈비뼈가 통째로 붙어있어 러스틱한 느낌 그대로의 뉴욕 정통 스테이크 스타일, 자유롭고 다채로운 식문화로 
미식의 천국인 뉴욕의 감각적인 맛과 멋을 만끽해 보세요!', '940g', 
'toma1.jpg', 'toma2.jpg', 'toma3.jpg', 'toma4.jpg', 'toma5.jpg');


/*상품 8 */
INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '밀푀유나베', 15000, 200, 'nabeMain');
/*================================상품 디테일 ============================*/
INSERT INTO TEST_PM.P_DETAILTABLE
(IDX, PRODUCTID, CONTENT, WEIGHT, DETAILIMG1, DETAILIMG2, DETAILIMG3, DETAILIMG4, DETAILIMG5)
VALUES(SEQ_P_Detail.NEXTVAL, '밀푀유나베', '육수에 소고기와 다채로운 야채가 더해져 깊은 맛이 일품인 밀푀유 나베. 재료 준비와 손질부터 번거로워 쉽게 도전하지 못하셨다면 밀키트 밀푀유 나베를 만나보세요.', '966g',
'nabe01.jpg', 'nabe02.jpg', 'nabe03.jpg', 'nabe04.jpg', 'nabe05.jpg');


/*상품 9 */
INSERT INTO TEST_PM.PRODUCTTABLE
(IDX, PRODUCTID, PRICE, STOCK, IMGNAME)
VALUES(SEQ_PRODUCT.NEXTVAL, '꼬치구이 세트', 12900, 3, 'chickenMain');
/*================================상품 디테일 ============================*/
INSERT INTO TEST_PM.P_DETAILTABLE
(IDX, PRODUCTID, CONTENT, WEIGHT, DETAILIMG1, DETAILIMG2, DETAILIMG3, DETAILIMG4, DETAILIMG5)
VALUES(SEQ_P_Detail.NEXTVAL, '꼬치구이 세트', '캠핑장에서 즐기는 아는 사람들은 다 안다는 그 맛, 이번 캠핑은
꼬치세트와 함께 즐겨보세요!', '모듬꼬치 10개', 
'chicken1.jpg', 'chicken2.jpg', 'chicken3.jpg', 'chicken4.jpg', 'chicken5.jpg');




SELECT * FROM PRODUCTTABLE p ;

