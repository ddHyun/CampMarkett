<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>:::Everyday 캠프마켓:::</title>
<style>
	.sf-menu>li>a{
		text-decoration: none;
	}
</style>
     <meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     <link rel="icon" href="resources/assets/img/images/favicon.ico">
     <link rel="shortcut icon" href="resources/assets/img/images/favicon.ico" />
     <link rel="stylesheet" href="resources/assets/css/style.css">
     <link rel="stylesheet" href="resources/assets/css/slider.css">
	 <link rel="stylesheet" href="resources/assets/css/zerogrid.css" type="text/css" media="screen">
	<link rel="stylesheet" href="resources/assets/css/responsive.css" type="text/css" media="screen"> 
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lumen/bootstrap.min.css" integrity="sha384-GzaBcW6yPIfhF+6VpKMjxbTx6tvR/yRd/yJub90CqoIn2Tz4rRXlSpTFYMKHCifX" crossorigin="anonymous">
     <script src="resources/assets/js/jquery.js"></script>
     <script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
     <script src="resources/assets/js/superfish.js"></script>
     <script src="resources/assets/js/jquery.easing.1.3.js"></script>
     <script src="resources/assets/js/sForm.js"></script>
     <script src="resources/assets/js/jquery.carouFredSel-6.1.0-packed.js"></script>
     <script src="resources/assets/js/tms-0.4.1.js"></script>
	 <script src="resources/assets/js/css3-mediaqueries.js"></script>
	 <script src="resources/assets/js/menuBar.js"></script>
	 <script src="https://kit.fontawesome.com/d9e2783f4c.js" crossorigin="anonymous"></script>
	 	 <script src="resources/assets/js/menuBar.js"></script>
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
     </head>
     <body style="background-color: #5fa022;">
       <div class="main">
<!--==============================header=================================-->
 <header> 
  <div class="zerogrid">
    <div class="col-full">
	<div class="wrap-col">
    <h1><a href="home"><img src="resources/assets/img/images/logo2.png" alt="EXTERIOR"></a> </h1>
    
         <div class="menu_block">
           <nav>
           <input type="hidden" id=checkLogin value=${empty sessionScope.loginId}>
            <ul class="sf-menu">
                   <li><a href="home">Home</a></li>
                   
                   <li><a href="marketMain_Temp">밀키트</a></li>
                   <li><a href="reviewMain_Temp">상품후기</a></li>
                   <li class="current"><a href="campingAreaMain_Temp">주변캠핑장 </a></li>
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

<!--=======content================================-->
<div class="content">
  <div class="zerogrid">
    <div class="col-full">
      <h1 style="margin-top:20px;"><i class="fa-solid fa-tents" style="color:#5fa022;"></i> 주변 캠핑장</h1>
      <button class="btn btn-dark btn-lg" onclick="popupLocation()">위치 설정</button>
    </div>
    <div class="clear"></div>
	
	<div class="row">
   		
	    <div class="portfolio">
	    	<c:forEach var="camp" items="#{camplist}">
	   	   <div class="col-1-2">
		  		<div class="wrap-col" onclick="popupDetail(${camp.idx})" style="cursor:pointer;" >
		  			<img style="border-radius:30px; margin:3px; object-fit:cover;" src="resources/assets/img/campingArea/${camp.imgName}" alt="">
		  			<h3 style="margin:3px;"><i class="fa-solid fa-tent"></i> ${camp.name}</h3>
		  			<h4 style="color:black;text-align:right; margin-right:40px;"><i class="fa-solid fa-road"></i> 캠핑장 까지  <strong>${camp.distance}km</strong></h4>
				</div>
			</div>
			</c:forEach>
	    </div>
	    
	</div>
	    
	   
    
  </div >
  <!-- 페이징 처리 -->
	<div class="row" style="margin:0 auto; align-items: center;text-align: center;">
	 <div class="zerogrid">
		<c:forEach var="i" begin="1" end="${maxPage}">
			<c:choose>
				<c:when test="${i eq nowPage}">
					<span style="font-size:1.5rem"><c:out value="[${i}]"/>&nbsp;</span>
				</c:when>
				<c:otherwise>
					<a style="font-size:1.5rem" href="campingAreaMain_Temp?page=${i}"><c:out value="${i}"/></a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</div>
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
	
	var windowX = window.screen.width;
	var windowY = window.screen.height;
	
	//상세보기 페이지 띄우기
	function popupDetail(idx){
		var popUpWidth = windowX / 3 ;
		var popUpheight = (windowY * 3 ) / 4 ;
		var top =  ((windowY / 2) - (popUpheight / 2));
		var left = ((windowX / 2) - (popUpWidth / 2));
	
		
		
	/* 	var pop = window.open("/camp/campDetail?idx="+e,"pop","width=650,height=800, scrollbars=yes, resizable=no");  */
		var pop = window.open(
				"/camp/campDetail?idx="+idx,
						"pop",
						"width=" + popUpWidth 
						+ ", height = " + popUpheight 
						+ ", top = " + top
						+ ", left = " + left
						+ " ,scrollbars=yes, resizable=no"); 	
		
	}
	
	//위치설정 페이지 띄우기
	function popupLocation(){
		var popUpWidth = (windowX * 2 )/ 5 ;
		var popUpheight = ( windowY * 3 )/ 5 ;
		var top =  ((windowY / 2) - (popUpheight / 2));
		var left = ((windowX / 2) - (popUpWidth / 2));
		var win = this.window;
		
		var pop = window.open(
				"/camp/makeLocation",
						"pop",
						"width=" + popUpWidth 
						+ ", height = " + popUpheight 
						+ ", top = " + top
						+ ", left = " + left
						+ " ,scrollbars=no, resizable=no"); 	
		
		//팝업창이 닫힐때 발생하는 이벤트
		
	}
	
</script>
</html>