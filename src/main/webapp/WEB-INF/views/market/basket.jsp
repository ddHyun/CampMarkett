<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
     <title>상세보기</title>
     <meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     <link rel="icon" href="resources/assets/img/images/favicon.ico">
     <link rel="shortcut icon" href="resources/assets/img/images/favicon.ico" />
     <link rel="stylesheet" href="resources/assets/css/style.css">
     <link rel="stylesheet" href="resources/assets/css/slider.css">
	 <link rel="stylesheet" href="resources/assets/css/zerogrid.css" type="text/css" media="screen">
	<link rel="stylesheet" href="resources/assets/css/responsive.css" type="text/css" media="screen">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/simplex/bootstrap.min.css" integrity="sha384-FYrl2Nk72fpV6+l3Bymt1zZhnQFK75ipDqPXK0sOR0f/zeOSZ45/tKlsKucQyjSp" crossorigin="anonymous"> 
     <script src="resources/assets/js/jquery.js"></script>
     <script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
     <script src="resources/assets/js/superfish.js"></script>
     <script src="resources/assets/js/jquery.easing.1.3.js"></script>
     <script src="resources/assets/js/sForm.js"></script>
     <script src="resources/assets/js/jquery.carouFredSel-6.1.0-packed.js"></script>
     <script src="resources/assets/js/tms-0.4.1.js"></script>
	 <script src="resources/assets/js/css3-mediaqueries.js"></script>
	 <script src="https://kit.fontawesome.com/d9e2783f4c.js" crossorigin="anonymous"></script>
	 	 <script src="resources/assets/js/menuBar.js"></script>
     <script>
      $(window).load(function(){
      $('.slider')._TMS({
              show:0,
              pauseOnHover:false,
              prevBu:'.prev',
              nextBu:'.next',
              playBu:false,
              duration:800,
              preset:'fade', 
              pagination:true,//'.pagination',true,'<ul></ul>'
              pagNums:false,
              slideshow:8000,
              numStatus:false,
              banners:false,
          waitBannerAnimation:false,
        progressBar:false
      })  
      });
      
     $(window).load (
    function(){$('.carousel1').carouFredSel({auto: false,prev: '.prev',next: '.next', width: 960, items: {
      visible : {min: 1,
       max: 4
},
height: 'auto',
 width: 240,

    }, responsive: false, 
    
    scroll: 1, 
    
    mousewheel: false,
    
    swipe: {onMouse: false, onTouch: false}});
    
    
    });      

     </script>
     <!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/resources/assets/img/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
         </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
      <script src="resources/assets/js/html5shiv.js"></script>
      <link rel="stylesheet" media="screen" href="resources/assets/css/ie.css">

    <![endif]-->
    <style>
    .zerogrid2{ width: 900px;  position: relative; margin: 0 auto; padding: 0px; padding-bottom: 30px;}
   	button{
   		width:350px;	
   		height:30px;
   	}
    </style>
    
     </head>
<body style="background-color: #5fa022;">
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
                   
                   <li><a href="marketMain_Temp">밀키트</a></li>
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
	<h2 style="margin-top: 10px;color:#5fa022;" class="head2"><i class="fa-solid fa-basket-shopping"></i> 장바구니</h2>
	<div class="card border-success mb-3" style="width:100%;">
 	
 		  <div class="card-body">
 	<c:choose>
	<c:when test="${empty basketProduct}">
		<p>장바구니가 비어있습니다 <p>
		<button type="button" style="height:40px; float:right;" class="btn btn-outline-success btn-lg" onclick="location.href='marketMain_Temp'">상품 목록</button>
	</c:when>
	
	<c:otherwise>
			
			<c:forEach var="product" items="${basketProduct}">
				<div id="${product.idx}div">
				<div class="card-header"><h4>${product.productId}</h4></div>
				<div class="card-body" >
				구매수량
				<input type="text" size="10" style="text-align:center; border:none; border-bottom:1px solid #5fa022;" id="${product.idx}pcs" value="${product.pcs}"readonly> 개
				
						
				<input id="minusBtn" type="button" style="padding:6px;line-height:0.5rem; width:1.5rem; height:1.5rem; font-size: 1rem;" class="btn btn-outline-dark" value="-" onclick="changePcs(${product.idx},'${product.productId}',-1)" >
				
				<input id="plusBtn" type="button" style="padding:6px;line-height:0.5rem; width:1.5rem; height:1.5rem; font-size: 1rem;" class="btn btn-outline-dark"  value="+" onclick="changePcs(${product.idx},'${product.productId}',1)">
				
				<input type="text" style="font-size:1.2rem; float:right; text-align:right; border:0 solid black" id="${product.idx}price" value="${product.totalPrice}원">
			
				</div>
				</div>
				<hr style="margin-top:0px;">
			</c:forEach>
			
				

 		 </div>
 		 
 		  <div class="card-header">
 		  
 		  <h3 id="totalPrice" style="text-align: right; color:black;">총 가격 : ${totalPrice}원</h3>
 		  </div>
 		  <div style="margin: 30px;">
			<button type="button" style="height:40px; float:right;" class="btn btn-outline-success btn-lg" onclick="goOrderPage()">구매 하기</button>
		</div>
		</c:otherwise>
		
		</c:choose>
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
<script>

let loginId = "${sessionScope.loginId}";

function changePcs(idx,productId,num){
	//현재 갯수
	var nowPcs = parseInt($("#"+idx+"pcs").val());
	
	if(nowPcs == 1 && num == -1){
		if(confirm("삭제하시겠습니까?")){
			/* fetch("deleteBasket?memberId=" + loginId + "&productId=" + productId);
			$("#"+idx+"div").hide(); */
			
			$.ajax({
				url: "deleteBasket?memberId=" + loginId + "&productId=" + productId,
				type: "GET",
				success: function(totalPrice){
					console.log(totalPrice);
					$("#totalPrice").text("총 가격 : " + totalPrice + "원");
					$("#"+idx+"div").hide();
					if(totalPrice==0){
						$("#basketMain").hide();
					}
				}
			});
		}
		
	}else{
		var newPcs = nowPcs + num;
		$.ajax({
			url: "plusMinusPcs",
			type: "POST",
			data: {"memberId": loginId ,"productId": productId , "pcs": num },
			success: function(price){
				$("#"+idx+"price").val(price+"원");
				$("#"+idx+"pcs").val(newPcs);
				$.ajax({
					url: "findTotalPrice",
					type: "POST",
					data : {"memberId": loginId},
					success: function(totalPrice){
						$("#totalPrice").text("총 가격 : " + totalPrice+"원");
					}
				});
			}
		});
	}
	//총 가격 갱신 
	
}

function goOrderPage(){
	var windowX = window.screen.width;
	var windowY = window.screen.height;
	var popUpWidth = windowX / 3 ;
	var popUpheight = (windowY * 3 ) / 4 ;
	var top =  ((windowY / 2) - (popUpheight / 2));
	var left = ((windowX / 2) - (popUpWidth / 2));
	//카드정보가 없다면 구매하기 페이지로 유도해야한다.	
	$.ajax({
		url:"checkHasCard?loginId=" + loginId,
		type: "get",
		success : function(hasCard){
			if(hasCard){
				
				var pop = window.open(
						"goOrderPage",
								"pop",
								"width=" + popUpWidth 
								+ ", height = " + popUpheight 
								+ ", top = " + top
								+ ", left = " + left
								+ ",'scrollbars=yes,resizable=no,toolbars=no, menubar=no'");  	
				
			}else{
				alert("카드가 등록되어있지 않습니다.\n 카드를 등록해 주세요");
			}
		}
	});
	
	}


	
	
/* 	var pop = window.open("/camp/campDetail?idx="+e,"pop","width=650,height=800, scrollbars=yes, resizable=no");  */
function orderOk(){
	location.href="orderOk";
}

</script>

</html>