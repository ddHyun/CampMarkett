<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
										</ul></li>
									<li><a href="login_Temp">로그인</a></li>
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
					style="margin: 0; padding: 0; width: 100%; border: 1px solid #33FF33; background-color: white;">
					<h2 class="head2"></h2>
					<div class="inner1_menu" style="float: left; width: 65%;">
						<img src="resources/assets/img/food/${product.imgName}.jpg"
							style="width: 100%;">
					</div>

					<div class="inner1_menu" style="float: left; width: 35%;">

						<div class="card border-success mb-3" style="width: 100%;">
							<h2 class="card-header"
								style="padding-top: 15px; margin-bottom: 5px;">${product.productId}</h2>
							<div class="card-body" style="padding-top: 5px;">
								<br>
								<p class="card-text">로렘 입숨(lorem ipsum; 줄여서 립숨, lipsum)은
									출판이나 그래픽 디자인 분야에서 폰트, 타이포그래피, 레이아웃 같은 그래픽 요소나 시각적 연출을 보여줄 때
									사용하는 표준 채우기 텍스트로, 최종 결과물에 들어가는 실제적인 문장 내용이 채워지기 전에 시각 디자인 프로젝트
									모형의 채움 글로도 이용된다. 이런 용도로 사용할 때 로렘 입숨을 그리킹(greeking)이라고도 부르며, 때로
									로렘 입숨은 공간만 차지하는 무언가를 지칭하는 용어로도 사용된다.</p>
								<h3 class="card-title" style="text-align: right;">${product.price}원</h3>
							</div>

							<hr>
							<div class="card-body">
								<button class="btn btn-success btn-lg" style="width: 90%;"
									onclick="addBasket('${product.productId}')">장바구니 추가</button>
								<button class="btn btn-success btn-lg"
									style="width: 90%; margin-top: 10px;"
									onclick="addBasket('${product.productId}')">구매 하기</button>
							</div>
						</div>


					</div>

					<div class="clear">
						<br>
					</div>
				</div>
				<div class="zerogrid2">
					<p>test2</p>
					
					<div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="width: 100%">
					  <input type="radio" style="display:none; height:50px;" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" >
					  <label style="height:50px;" class="btn btn-outline-primary" for="btnradio1"><h3>상세 보기</h3></label>
					  <input type="radio" style="display:none; height:50px;" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off" >
					  <label style="height:50px;" class="btn btn-outline-primary" for="btnradio2"><h3>구매 후기</h3></label>
					</div>
										

					<!-- =============== 후기 게시판==================== -->
					<div 	id="review" style="display:none;">
					<table style="margin-top: 20px;" class="table table-hover"	>
						<thead>
							<tr class="table-success">
								<th scope="col">Type</th>
								<th scope="col">Column heading</th>
								<th scope="col">Column heading</th>
								<th scope="col">Column heading</th>
							</tr>
						</thead>
						<tbody>
							<tr class="table-active">
								<th scope="row">Active</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr>
								<th scope="row">Default</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="table-primary">
								<th scope="row">Primary</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="table-secondary">
								<th scope="row">Secondary</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="table-success">
								<th scope="row">Success</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="table-danger">
								<th scope="row">Danger</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="table-warning">
								<th scope="row">Warning</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="table-info">
								<th scope="row">Info</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="table-light">
								<th scope="row">Light</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="table-dark">
								<th scope="row">Dark</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
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
</script>


</html>