<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
     <title>구매 완료 </title>
     <meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     <link rel="icon" href="resources/assets/img/images/favicon.ico">
     <link rel="shortcut icon" href="resources/assets/img/images/favicon.ico" />
     <link rel="stylesheet" href="resources/assets/css/style.css">
     <link rel="stylesheet" href="resources/assets/css/slider.css">
	 <link rel="stylesheet" href="resources/assets/css/zerogrid.css" type="text/css" media="screen">
	<link rel="stylesheet" href="resources/assets/css/responsive.css" type="text/css" media="screen"> 
     <script src="resources/assets/js/jquery.js"></script>
     <script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
     <script src="resources/assets/js/superfish.js"></script>
     <script src="resources/assets/js/jquery.easing.1.3.js"></script>
     <script src="resources/assets/js/sForm.js"></script>
     <script src="resources/assets/js/jquery.carouFredSel-6.1.0-packed.js"></script>
     <script src="resources/assets/js/tms-0.4.1.js"></script>
	 <script src="resources/assets/js/css3-mediaqueries.js"></script>

     
        <style>
    .zerogrid2{ width: 900px; height:75%; position: relative; margin: 0 auto; padding: 0px;}
   	button{
   		width:350px;	
   		height:30px;
   	}
    </style>
    
     </head>
<body>
       <div class="main">
<!--==============================header=================================-->
 <header> 
  <div class="zerogrid">
    <div class="col-full">
	<div class="wrap-col">
    <h1><a href="home"><img src="resources/assets/img/images/logo.png" alt="EXTERIOR"></a> </h1>
    
         <div class="menu_block">
           <nav>
            <ul class="sf-menu">
                   <li><a href="home">Home</a></li>
                   
                   <li class="current"><a href="marketMain_Temp">밀키트</a></li>
                   <li><a href="reviewMain_Temp">후기</a></li>
                   <li><a href="campingAreaMain_Temp">주변 캠핑장 </a></li>
                   <li class="with_ul"><a href="memberInfo_Temp">회원 정보</a>
				   	<ul>
                         <li><a href="#"> cuisine</a></li>
                         <li><a href="#">Good rest</a></li>
                         <li><a href="#">Services</a></li>
                     </ul>
				   </li>
                   <li><a href="Login_Temp">로그인</a></li>
             </ul>
           </nav>
           <div class="clear"></div>
           </div>
           <div class="clear"></div>
		</div>
      </div>
    </div>
</header>
<!--==============================content=================================-->
<div class="content">
<div class="zerogrid2">
	<h2 class="head2">구매가 완료 되었습니다.</h2>
	
	<div id=basketMain>
	<c:choose>
	<c:when test="${empty basketProduct}">
		<p>장바구니가 비어있습니다 <p>
	</c:when>
	
		<c:otherwise>
				비어있지 않아요!
			<br>
				제품이름<br>
			<c:forEach var="product" items="${basketProduct}">
				<div id="${product.idx}div">
				${product.productId}
				구매수량
				<input type="button" value="-" onclick="changePcs(${product.idx},'${product.productId}',-1)" >
				<input type="text" id="${product.idx}pcs" value="${product.pcs}"readonly> 개
				<input type="button" value="+" onclick="changePcs(${product.idx},'${product.productId}',1)">
				<input type="text" id="${product.idx}price" value="${product.totalPrice}원">
				</div>
			</c:forEach>
			
			
			<div id="row"  style= "height:100px;">
				
				
					
			</div>
			<div id="row"  style= "height:40px;">
				<input id="totalPrice" value="${totalPrice}원">
				
				<button style="float:right;" onclick="goOrderPage()">구매하기</button>
			</div> 		
		</c:otherwise>
		
	</c:choose>
	</div>
	
	
</div>
</div>
</div>
<!--==============================footer=================================-->

<footer style="height:70px; padding: 10px">    
  <div class="zerogrid">
    <div class="col-full">
		<div class="wrap-col">
     Gourmet © 2013  &nbsp;&nbsp; |&nbsp;&nbsp;   <a href="#">Privacy Policy</a>    &nbsp;&nbsp;|&nbsp;&nbsp;  Designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster</a> - <a href="https://www.zerotheme.com/" title="free website templates">ZEROTHEME</a>
	 	</div>
    </div>
  </div>
</footer>
</body>


</html>