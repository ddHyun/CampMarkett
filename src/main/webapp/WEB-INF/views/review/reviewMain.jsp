<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
     <title>Home</title>
     <meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     <link rel="icon" href="resources/assets/img/images/favicon.ico">
     <link rel="shortcut icon" href="resources/assets/img/images/favicon.ico" />
     <link rel="stylesheet" href="resources/assets/css/style.css">
     <link rel="stylesheet" href="resources/assets/css/slider.css">
	 <link rel="stylesheet" href="resources/assets/css/zerogrid.css" type="text/css" media="screen">
	 <link rel="stylesheet" href="resources/assets/css/responsive.css" type="text/css" media="screen"> 
     <link rel="stylesheet" href="resources/assets/css/banner.css">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/simplex/bootstrap.min.css" integrity="sha384-FYrl2Nk72fpV6+l3Bymt1zZhnQFK75ipDqPXK0sOR0f/zeOSZ45/tKlsKucQyjSp" crossorigin="anonymous">     
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
   	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
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
     </head>
     <body>
       <div class="main">
<!--==============================header=================================-->
 <header> 
  <div class="zerogrid">
    <div class="col-full">
	<div class="wrap-col">
    <h1><a href="home" style="text-decoration-line:none;"><img src="resources/assets/img/images/logo2.png" alt="EXTERIOR"></a> </h1>
    
         <div class="menu_block">
           <nav>
            <ul class="sf-menu">
                   <li><a style="text-decoration-line:none;" href="home">Home</a></li>
                   
                   <li><a style="text-decoration-line:none;" href="marketMain_Temp">밀키트</a></li>
                   <li class="current"><a style="text-decoration-line:none;" href="reviewMain_Temp">후기</a></li>
                   <li><a style="text-decoration-line:none;" href="campingAreaMain_Temp">주변 캠핑장 </a></li>
                   <li class="with_ul"><a style="text-decoration-line:none;" href="memberInfo_Temp">회원 정보</a>
				   	<ul>
                         <li><a style="text-decoration-line:none;" href="#"> cuisine</a></li>
                         <li><a style="text-decoration-line:none;" href="#">Good rest</a></li>
                         <li><a style="text-decoration-line:none;" href="#">Services</a></li>
                         <li><a style="text-decoration-line:none;" href="makeSampleId">샘플 로그인!</a></li>
                     </ul>
				   </li>
                   <li><a style="text-decoration-line:none;" href="login_Temp">로그인</a></li>
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
      <div class="slider">
        <ul class="items">
          <li><img src="resources/upload/caminoevent.jpg" alt="" ></li>
          <li><img src="resources/upload/coleman_car.png" alt=""></li>
          <li class="mb0"><img src="resources/upload/minibeam.jpg" alt=""></li>
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
        <div class="car_wrap" align="center">
        <br>
        
	<div class="review" align="center" style="width:890px">  
	<table class="table" style="border:1px solid white; border-radious:2px;">
  	 	<thead class="table-dark">
			<tr align="center">
				<th style="width:80">#</th>
				<th style="width:250">제목</th>
				<th width="150">후기상품</th>
				<th width="150">작성자</th>
				<th width="100">작성일</th>
				<th width="80">조회수</th>
				<th width="80">추천수</th>
			</tr>
		</thead>
		
			<c:forEach var="vo" items="${reviewlist}">
			<tr>
				<td align="center">${vo.idx}</td> <!-- 글 번호 -->
			
				<td align="center">
					<a style="text-decoration-line:none;" href="reviewRead.do?idx=${vo.idx}">
					<font color="black">${vo.title}</font>  <!-- 글 제목  -->
					</a>
				</td>
				<td align="center">${vo.productid}</td> 
				<td align="center">${vo.memberid}</td>
				<td align="center">${fn:split(vo.regdate,' ')[0]}</td>
				<td align="center">${vo.readhit}</td>
				<td align="center">${vo.joayo}</td>
			</tr>
			</c:forEach>	
    </table>    
	</div>
	
	<div class="inform_box" align="center" style="width:700">
			<br>
			<button type="button" class="btn btn-outline-dark" onclick="location.href='reviewInform.do'">리뷰쓰기</button>
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
    
	 	</div>
    </div>
  </div>
</footer>
</body>
</html>