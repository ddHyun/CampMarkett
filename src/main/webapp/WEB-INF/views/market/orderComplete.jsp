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
	 	 <script src="resources/assets/js/menuBar.js"></script>

     
        <style>
    .zerogrid2{ width: 900px; height:75%; position: relative; margin: 0 auto; padding: 0;}
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
						<h1>
							<a href="home"><img
								src="resources/assets/img/images/logo.png" alt="EXTERIOR"></a>
						</h1>

						<div class="menu_block">
						<nav>
						<input type="hidden" id=checkLogin value=${empty sessionScope.loginId}>
            		<ul class="sf-menu">
                   <li><a href="home">Home</a></li>
                   
                   <li class="current"><a href="marketMain_Temp">밀키트</a></li>
                   <li><a href="reviewMain_Temp">상품후기</a></li>
                   <li><a href="campingAreaMain_Temp">주변캠핑장 </a></li>
                   <li class="with_ul" id="memberMenu"><a href="#">마이페이지</a>
				   <ul>
                         <li><a href="myInfo.do">내정보수정</a></li>
                         <li><a href="money.do">카드등록</a></li>
                         <li><a href="money.do">카드충전</a></li>
                         <li><a href="#"
                         	onclick="goMyBasket(${sessionScope.loginId eq null})">
                         	장바구니</a></li>
                   </ul>
				   </li>
                   <li id="loginTag"><a href="login_Temp">로그인</a></li>
                   <li id="logoutTag"><a href="logout">로그아웃</a></li>
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
	
	<div id=basketMain>
	<div class="card border-light mb-3" style="width: 740px; margin:60px">
	  <div class="card-header"><h2>${resultMessage}</h2></div>
	   <hr>
		<c:choose>
			<c:when test="${empty orderList}">
				<a href='home' text-aling="center">이미 요청된 페이지 입니다. Home </a>
			</c:when>
			
			<c:otherwise>

				제품이름
				<br>
				<br>
				<c:forEach var="product" items="${orderList}">
					<div class="card-body">
					    <h4 class="card-title"><strong>${product.productId}</strong></h4>
					    <p style="float: right" class="card-text"> 구매 수량 : ${product.pcs} </p>
					</div>
				</c:forEach>
					<hr>
					<br>
					
					 <div class="card-header"><h4>배송주소 : ${address}</h4></div>
				<br>
				<hr>
				<div class="d-grid gap-2" style="text-align: right">
				  <button class="btn btn-lg btn-light " type="button" onclick="location.href='home'">Home</button>
				</div>
		</c:otherwise>
		
	</c:choose>
	</div>
		<!-- model.addAttribute("resultMessage", resultMessage);
		model.addAttribute("address",address);
		model.addAttribute("orderList",basketList);
		 -->
	
	</div>
	
	
</div>
</div>
</div>
<!--==============================footer=================================-->

<footer>    
  <div class="zerogrid">
    <div class="col-full">
		<div class="wrap-col">
     koreaIt ② academy  &nbsp;&nbsp; |&nbsp;&nbsp;   <a href="#">Privacy Policy</a>    &nbsp;&nbsp;|&nbsp;&nbsp;  Designed by <a href="https://github.com/SpringProjectKoreaIT/CampMarkett" rel="nofollow">CampMarketTeam</a> - <a href="https://github.com/SpringProjectKoreaIT/CampMarkett" title="free website templates">Group '2' </a>
	 	</div>
    </div>
  </div>
</footer>
</body>


</html>