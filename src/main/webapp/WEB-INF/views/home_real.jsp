<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
     <title>:::Everyday 캠프마켓:::</title>
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
     <body>
       <div class="main">
<!--==============================header=================================-->
 <header> 
  <div class="zerogrid">
    <div class="col-full">
	<div class="wrap-col">
    <h1><a href="home"><img src="resources/assets/img/images/logo2.png" alt="EXTERIOR"></a> </h1>
    
         <div class="menu_block">
                   <input type="hidden" id=checkLogin value=${empty sessionScope.loginId}>
           <nav>
            <ul class="sf-menu">
                   <li class="current"><a href="home">Home</a></li>
                   <li><a href="marketMain_Temp">밀키트</a></li>
                   <li><a href="reviewMain_Temp">상품후기</a></li>
                   <li><a href="campingAreaMain_Temp">주변캠핑장 </a></li>
                   <li class="with_ul"  id="memberMenu"><a href="#">마이페이지</a>
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
 <div class="slider-relative">
    <div class="slider-block">
      <div class="slider" style="margin-right:0px">
        <ul class="items">
          <li><img src="resources/assets/img/mainImg/main3.jpg" alt=""></li>
          <li><img src="resources/assets/img/mainImg/main10.jpg" alt=""></li>
          <li><img src="resources/assets/img/mainImg/main11.jpg" alt=""></li>
          <li><img src="resources/assets/img/mainImg/main7.jpg" alt=""></li>
         
          <li class="mb0"><img src="resources/assets/img/mainImg/main8.jpg" alt=""></li>
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
        <div class="car_wrap">
        <h2>Best Choice</h2>
        <a href="#" class="prev"></a><a href="#" class="next"></a>
        <ul class="carousel1">
          <li><div><img src="resources/assets/img/images/page1_img1.jpg" alt="">
          <div class="col1 upp"> <a href="#">kim Lorem ipsum doamet consectet</a></div>
          <span> Dorem ipsum dolor amet consectetur</span>
          <div class="price">45$</div></div>
          </li>
          <li><div><img src="resources/assets/img/images/page1_img2.jpg" alt="">
          <div class="col1 upp"> <a href="#">Lorem ipsum doamet consectet</a></div>
          <span> Dorem ipsum dolor amet consectetur</span>
          <div class="price">45$</div></div>
          </li>
          <li><div><img src="resources/assets/img/images/page1_img3.jpg" alt="">
          <div class="col1 upp"> <a href="#">Lorem ipsum doamet consectet</a></div>
          <span> Dorem ipsum dolor amet consectetur</span>
          <div class="price">45$</div></div>
          </li>
          <li><div><img src="resources/assets/img/images/page1_img4.jpg" alt="">
          <div class="col1 upp"> <a href="#">Lorem ipsum doamet consectet</a></div>
          <span> Dorem ipsum dolor amet consectetur</span>
          <div class="price">45$</div></div>
          </li>
          <li><div><img src="resources/assets/img/images/page1_img3.jpg" alt="">
          <div class="col1 upp"> <a href="#">Lorem ipsum doamet consectet kim</a></div>
          <span> Dorem ipsum dolor amet consectetur</span>
          <div class="price">45$</div></div>
          </li>
        </ul>
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
     Gourmet © 2013  &nbsp;&nbsp; |&nbsp;&nbsp;   <a href="#">Privacy Policy</a>    &nbsp;&nbsp;|&nbsp;&nbsp;  Designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster</a> - <a href="https://www.zerotheme.com/" title="free website templates">ZEROTHEME</a>
	 	</div>
    </div>
  </div>
</footer>
</body>
</html>