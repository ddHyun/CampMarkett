<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
<head>
<title>상세보기</title>
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
<!-- https://bootswatch.com/united/ -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/united/bootstrap.min.css"
	integrity="sha384-JW3PJkbqVWtBhuV/gsuyVVt3m/ecRJjwXC3gCXlTzZZV+zIEEl6AnryAriT7GWYm"
	crossorigin="anonymous">
<script src="resources/assets/js/jquery.js"></script>
<script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
<script src="resources/assets/js/superfish.js"></script>
<script src="resources/assets/js/jquery.easing.1.3.js"></script>
<script src="resources/assets/js/sForm.js"></script>
<script src="resources/assets/js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="resources/assets/js/tms-0.4.1.js"></script>
<script src="resources/assets/js/css3-mediaqueries.js"></script>
	 <script src="resources/assets/js/menuBar.js"></script>

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
.zerogrid2 {
	width: 900px;
	position: relative;
	margin: 0 auto;
	padding: 0px;
}

.inner1_menu {
	float: left;
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
				<div class="s"
					style="margin: 0; padding: 0; width: 100%; background-color: white;">
					<h2 class="head2"></h2>
					<div class="inner1_menu"
						style="float: left; width: 65%; margin-top: 40px">
						<img src="resources/assets/img/food/${product.imgName}.jpg"
							style="width: 100%; padding: 20px">
					</div>

					<div class="inner1_menu" style="float: left; width: 35%;">

						<div class="card border-success mb-3"
							style="width: 100%; border: none;">
							<h2 class="card-header"
								style="padding-top: 15px; font-size: 30px; margin-bottom: 5px;">
								<strong>${product.productId}</strong>
							</h2>
							<div class="card-body" style="padding-top: 5px;">
								<br>
								<p class="card-text">

									 ${pDetail.content}<br><br>
									<span style="font-size:13px">무료배송<br>
									30000원 이상 구매시<br><br>
									개당 중량  : ${pDetail.weight}<br>
									유통기한 : 2022년 10-10이거나 그 이후인 상품<br>
									보관방법 : 냉동보관</span> 
								

								</p>
								<h3 class="card-title" style="text-align: right;">${product.price}원</h3>
							</div>

							<hr>
							<div class="card-body" style="text-align: center;">
								<button class="btn btn-success btn-lg" style="width: 90%;"
									onclick="addBasket('${product.productId}')">장바구니 추가</button>
								<%-- <button class="btn btn-success btn-lg"
									style="width: 90%; margin-top: 10px;"
									onclick="addBasket('${product.productId}')">구매 하기</button> --%>
							</div>
						</div>


					</div>

					<div class="clear">
						<br>
					</div>
				</div>
				<div class="zerogrid2">


					<div class="btn-group" role="group"
						aria-label="Basic radio toggle button group"
						style="width: 100%; border: 1px black; margin: 20px 0;">
						<input type="radio" style="display: none; height: 50px;"
							class="btn-check" name="btnradio" id="btnradio1" value="detail"
							autocomplete="off"> <label
							style="height: 40px; border: 3px solid #5fa022;"
							class="btn btn-outline-success" for="btnradio1">상세 보기</label> <input
							type="radio" style="display: none; height: 50px;"
							class="btn-check" name="btnradio" id="btnradio2" value="review"
							autocomplete="off"> <label
							style="height: 40px; border: 3px solid #5fa022;"
							class="btn btn-outline-success" for="btnradio2">구매 후기</label>
					</div>
					<!-- 상품 상세보기 창 -->
					<div id="detail" style="background-color: white;">
						<img src="resources/assets/img/food/detail/${pDetail.detailImg1}"
							style="width: 120%"> <img
							src="resources/assets/img/food/detail/${pDetail.detailImg2}" style="width: 120%">
						<img src="resources/assets/img/food/detail/${pDetail.detailImg3}"
							style="width: 120%"> <img
							src="resources/assets/img/food/detail/${pDetail.detailImg4}" style="width: 120%">
						<img src="resources/assets/img/food/detail/${pDetail.detailImg5}"
							style="width: 120%">
					</div>
					
					<!-- =============== 후기 게시판==================== -->
					<div id="review" >
						<table class="table table-hover" style="margin-top: 20px; margin-bottom: 30px;">
							<thead>
								<tr>
									<th scope="col" style="text-align:center;">작성일</th>
									<th scope="col" style="text-align:center;">제목</th>
									<th scope="col" style="text-align:center;">조회수</th>
									<th scope="col" style="text-align:center;">추천수</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="vo" items="${reviewList}">
									<tr class="table-primary">
										<th scope="row" style="text-align:center;">${fn:split(vo.regdate,' ')[0]}</th>
										<td style="text-align:center;"><a style="text-decoration-line: none;"
											href="reviewRead.do?idx=${vo.idx}"> <font color="black">${vo.title}</font>
										</a></td>
										<td style="text-align:center;">${vo.readhit}</td>
										<td style="text-align:center;">👍${vo.joayo}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
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

		if (loginId == null || loginId == "none") {
			alert("로그인 후 이용해 주세요.")
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
	$(document).ready(function() {
		$('.btn-check').click(function() {
			var where = $("input[name='btnradio']:checked").val();
			if (where == 'review') {

				$('#detail').css('display', 'none');

			} else {
				$('#detail').css('display', 'block');
			}
		});
	});
</script>


</html>