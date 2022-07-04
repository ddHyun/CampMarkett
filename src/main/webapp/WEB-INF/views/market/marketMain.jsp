<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>:::Everyday 캠프마켓:::</title>
<style>
	.sf-menu>li>a{
		text-decoration: none;
	}
</style>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="icon" href="resources/assets/img/images/favicon.ico">
<link rel="shortcut icon" href="resources/assets/img/images/favicon.ico" />
<link rel="stylesheet" href="resources/assets/css/style.css">
<link rel="stylesheet" href="resources/assets/css/slider.css">
<link rel="stylesheet" href="resources/assets/css/zerogrid.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="resources/assets/css/responsive.css"
	type="text/css" media="screen">
<script src="resources/assets/js/jquery.js"></script>
<script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
<script src="resources/assets/js/superfish.js"></script>
<script src="resources/assets/js/jquery.easing.1.3.js"></script>
<script src="resources/assets/js/sForm.js"></script>
<script src="resources/assets/js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="resources/assets/js/tms-0.4.1.js"></script>
<script src="resources/assets/js/css3-mediaqueries.js"></script>
<script src="resources/assets/js/menuBar.js"></script>

<!-- 부트 스트랩 -->
<!-- <link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css"> -->

<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/minty/bootstrap.min.css"
	integrity="sha384-H4X+4tKc7b8s4GoMrylmy2ssQYpDHoqzPa9aKXbDwPoPUA3Ra8PA5dGzijN+ePnH"
	crossorigin="anonymous">
<script>
      $(window).load(function(){
      $('.slider')._TMS({
              show:0,
              pauseOnHover:false,
              prevBu:'.prev',
              nextBu:'.next',
              playBu:false,
              duration:600,
              preset:'fade', 
              pagination:true,//'.pagination',true,'<ul></ul>'
              pagNums:false,
              slideshow:4000,
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
                   
                   <li class="current"><a href="marketMain_Temp">밀키트</a></li>
                   <li><a href="reviewMain_Temp">상품후기</a></li>
                   <li><a href="campingAreaMain_Temp">주변캠핑장 </a></li>
                   <li class="with_ul" id="memberMenu"><a href="#">마이페이지</a>
				   <ul>
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

		<!-- =========================광고 ========================= -->

		<div class="slider-relative" style="witdh: height:470px">
			<div class="slider-block" style="height: 470px">
				<div class="slider" style="height: 470px">
					<ul class="items">
						<li><img src="resources/assets/img/marketImg/marketMain04.jpg"
							alt=""></li>
						<li><img src="resources/assets/img/marketImg/marketMain03.jpg"
							alt=""></li>
						<li><img src="resources/assets/img/marketImg/marketMain01.jpg"
							alt=""></li>
						<li class="mb0"><img
							src="resources/assets/img/marketImg/marketMain02.jpg" alt=""></li>
					</ul>
				</div>
			</div>
		</div>

		<!--=======content================================-->


		<div class="content page1">
			<div class="zerogrid">

				<div class="row">
					<div class="col-full">
						<div class="wrap-col">
							<div class="car_wrap" style="margin-left: 160px">
								<h2>상품</h2>
								<div style="margin: 0 auto;">
									<c:forEach var="product" items="${productList}">
										<%-- <div class="temp" style="float:left; margin:auto; border:1px solid black; width:27%" onclick="popupDetail(${camp.idx})" style="cursor:pointer;">
					<img src="resources/assets/img/food/${product.imgName}.jpg" height="200px" width="300px">
				<h2> ${product.productId}</h2>
				<p class="mb-0">${product.price}원</p>
				<a href="#" class="btn" onclick="purchase(${product.idx})">구매하기</a>
				<a href="#" class="btn" onclick="location.href='marketDetail?idx=${product.idx}'">상세보기</a>
				</div> --%>

										<!--  -->
										<div class="temp"
											style="float: left; margin: 10px; width: 315px"
											<%--  onclick="popupDetail(${camp.idx})" --%> style="cursor:pointer;">
											<div class="card mb-3">
												<img style="margin: 6px;"
													src="resources/assets/img/food/${product.imgName}.jpg"
													height="200px" width="300px">
												<h3 class="card-header" style="color:black;">${product.productId}</h3>
												<div class="card-body" ">
													<figure class="text-end">
														<blockquote class="blockquote" style="margin-bottom: 3px">
															<strong class="mb-0">${product.price}원</strong>
														</blockquote>
													</figure>
													<div style="text-align: center;">
													<input type="button" class="btn btn-primary" style="width:45%;"
														onclick="addBasket('${product.productId}')" value="장바구니 담기"> 
													<input type="button" class="btn btn-primary" style="width:45%;"
														onclick="location.href='marketDetail?idx=${product.idx}'"
														value="상세보기">
													</div>
												</div>
											</div>
										</div>
										<!--  -->
									</c:forEach>

								</div>



							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>

	<!--==============================footer=================================-->

	<footer>
		<div class="zerogrid">
			<div class="col-full">
				<div class="wrap-col">
					Gourmet © 2013 &nbsp;&nbsp; |&nbsp;&nbsp; <a href="#">Privacy
						Policy</a> &nbsp;&nbsp;|&nbsp;&nbsp; Designed by <a
						href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster</a>
					- <a href="https://www.zerotheme.com/"
						title="free website templates">ZEROTHEME</a>
				</div>
			</div>
		</div>
	</footer>
</body>
<script>

	
	function addBasket(productId) {
		let loginId = "${sessionScope.loginId}";

		if (${sessionScope.loginIdx eq null}||loginId==""||loginId=="none") {
			alert("로그인 후 이용해 주세요.");
		} else {
			if (confirm("장바구니에 추가 하시겠습니까")) {

				//location.href="addBasket?memberId=" + loginId + "&productId=" + productId;
				//메소드만 실행
				fetch("addBasket?memberId=" + loginId + "&productId="
						+ productId);

				if (confirm("장바구니에 추가되었습니다. 장바구니로 이동하시겠습니까?")) {
					location.href = "goBasket";
				}
			}
		}

	}

</script>


</html>