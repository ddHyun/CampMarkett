<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
     <title>결제하기</title>
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
	 <script src="https://kit.fontawesome.com/d9e2783f4c.js" crossorigin="anonymous"></script>
	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/simplex/bootstrap.min.css" integrity="sha384-FYrl2Nk72fpV6+l3Bymt1zZhnQFK75ipDqPXK0sOR0f/zeOSZ45/tKlsKucQyjSp" crossorigin="anonymous">
    	 <script src="resources/assets/js/menuBar.js"></script>
    <style>
    .zerogrid2{ margin: 20px;width: 100%; height:600px; position: relative; margin: 0 auto; padding: 0px;}
   	button{
   		width:350px;	
   		height:30px;
   	}
    </style>
    
     </head>
    <body style="background-color: #5fa022;">
       <div class="main">
<!--==============================header=================================-->
 <header style="padding: 10px;"> 
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
		<div style="margin:0 auto;width:90%; margin-top:10px;">
			<h2><i class="fa-regular fa-credit-card"></i> 결제 하기</h2>
		<div class="card border-dark mb-3" >
		<c:forEach var="product" items="${basketProduct}">
		  <div class="card-body" style="padding: 7px 5px 3px 5px; border-bottom: 1px solid #5fa022">
		  <h4 style="color:black;">${product.productId}</h4>
		  <p class="card-text" style="margin-bottom:3px; text-align:right;"> 수량 :${product.pcs}개  &#9; &#9; 가격 : ${product.totalPrice} 원 <p>
		  </div>
		  <!-- <hr style="margin:5px; border: 1px dotted #5fa022;"> -->
		  <!-- <div class="card-body">
		    <h4 class="card-title">Dark card title</h4>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		  </div> -->
		
		</c:forEach>
			<div class="card-header">
		    <h4 style="text-align: right;" class="card-title">총 가격 : ${totalPrice}원</h4>
		  </div>
		
		</div>
		<button style="height:40px; width:50%;" class="btn btn-lg btn-light" type="button">잔여 포인트 : ${charge} 원</button>
		<input style="height:40px; width:45%;" type="password" name="simplePwd" id="nowPwd" placeholder="간편 비밀번호">
		<input style="float:right; height:40px; width:50%;" type="button" class="btn btn-outline-success btn-lg" onclick="doOrder()" value="구매하기">
		
		
	
	
	</div>
	</div>
	
</div>
</div>
</div>
<!--==============================footer=================================-->

<footer style="padding: 20px;">    
  <div class="zerogrid">
    <div class="col-full">
		<div class="wrap-col">
	 	</div>
    </div>
  </div>
</footer>
</body>
<script>
	function doOrder(){
		var pwd = "${simplePwd}";
		var inputPwd = $("#nowPwd").val();
		var charge=${charge < totalPrice};
		if(charge){
			alert("잔액이 부족합니다");
			return;
		}
		
		
		if(pwd==inputPwd){
			if(confirm("구매하시겠습니까?")){
				var totalPrice = "${totalPrice}";
				
				opener.parent.orderOk();
				window.close();
			}
			
		}else{
			alert("간편비밀번호가 다릅니다.")
		}
	}
	
	
</script>
</html>