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
     <script src="resources/assets/js/jquery.js"></script>
     <script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
     <script src="resources/assets/js/superfish.js"></script>
     <script src="resources/assets/js/jquery.easing.1.3.js"></script>
     <script src="resources/assets/js/sForm.js"></script>
     <script src="resources/assets/js/jquery.carouFredSel-6.1.0-packed.js"></script>
     <script src="resources/assets/js/tms-0.4.1.js"></script>
	 <script src="resources/assets/js/css3-mediaqueries.js"></script>
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
    .zerogrid2{ width: 900px; position: relative; margin: 0 auto; padding: 0px;}
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
	<h2 class="head2">장바구니</h2>
	
	<c:choose>
	<c:when test="${empty basketProduct}">
		<p>장바구니가 비어있습니다 <p>
	</c:when>
	
		<c:otherwise>
				비어있지 않아요!
			<br>
				제품이름<br>
			<c:forEach var="product" items="${basketProduct}">
				<div id="${product.productId}div">
				${product.productId}
				구매수량
				<input type="button" value="-" onclick="minusPcs('${product.productId}')" >
				<input type="text" id="${product.productId}pcs" value="${product.pcs}"readonly> 개
				<input type="button" value="+" onclick="plusPcs(${product.productId})">
				</div>
			</c:forEach>
		</c:otherwise>
		
	</c:choose>

	
</div>
</div>
</div>
<!--==============================footer=================================-->

<footer>    
  <div class="zerogrid">
    <div class="col-full">
		<div class="wrap-col">
     Gourmet © 2013  &nbsp;&nbsp; |&nbsp;&nbsp;   <a href="#">Privacy Policy</a>    &nbsp;&nbsp;|&nbsp;&nbsp;  Designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster</a> - <a href="https://www.zerotheme.com/" title="free website templates">ZEROTHEME</a>
	 	</div>
    </div>
  </div>
</footer>
</body>
<script>

function minusPcs(productId){
	alert($("#"+productId+"pcs").val());
	let nowPcs = $("#"+productId+"pcs").val();
	if(nowPcs == 10 ){
		alert("삭제하시겠습니까?");
		let newPcs = nowPcs - 1;
		$("#"+productId+"pcs").val(newPcs);
	}else{
		/* 숫자 하나 내리고 업데이트 */
		let newPcs = nowPcs - 1;

		alert("ajax 실행?");
		
		$.ajax({
			url: "plusMinusPcs",
			type: "POST",
			data: {"productId": productId , "changePcs": -1 },
			success: function(agrs){
				console.log(agrs);
				$("#"+productId+"pcs").val(newPcs);
				
			}
		});
	}
}



</script>

</html>