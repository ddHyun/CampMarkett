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
	 	 <script src="resources/assets/js/menuBar.js"></script>
     <script>
     $(document).ready(function() {

    		// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
    		var floatPosition = parseInt($("#floatMenu").css('top'));
    		// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

    		$(window).scroll(function() {
    			// 현재 스크롤 위치를 가져온다.
    			var scrollTop = $(window).scrollTop();
    			var newPosition = scrollTop + floatPosition + "px";

    			/* 애니메이션 없이 바로 따라감
    			 $("#floatMenu").css('top', newPosition);
    			 */

    			$("#floatMenu").stop().animate({
    				"top" : newPosition
    			}, 500);

    		}).scroll();

    	});
     </script>
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
     
     <script>

	function insert(f){
		
		var memberid = f.memberid.value;
		var productid = f.productid.value;
		var title = f.title.value;
		
	
		
		f.action = "reviewInsert.do";
		f.method = "POST";
		f.submit();
		
	}

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
                   
                   <li><a href="marketMain_Temp">밀키트</a></li>
                   <li class="current"><a href="reviewMain_Temp">상품후기</a></li>
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
  <div class="slider-relative">
    <div class="slider-block">
      <div class="slider">
        <ul class="items">
          <li><img src="resources/upload/caminoevent.png" alt="" ></li>
          <li><img src="resources/upload/coleman_car.png" alt=""></li>
          <li class="mb0"><img src="resources/upload/minibeam.png" alt=""></li>
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
        <div class="car_wrap" align="center" style="height:730px;">
        <br>
        
	<div class="review" align="center" style="width:890px; ">
	    <div style="height:auto; position:absolute; width:200px; left:0; top:center;">
 
 			<div id="floatMenu">
				<a href="http://www.coleman.co.kr/shop/board/view.php?id=notice&no=48" onclick="clickBanner('http://www.coleman.co.kr/shop/board/view.php?id=notice&no=48')" target="_blank">
 				<img style="width:240px; height:800px" src="resources/upload/coleman.png" alt="">
				</a>
			</div>
		</div>  
		
			    <div style="height:auto; position:absolute; width:200px; right:0; top:center;">
 
 			<div id="floatMenu">
				<a href="https://smartstore.naver.com/yaliyali/products/4986415701?n_media=27758&n_query=MOBICOOL&n_rank=1&n_ad_group=grp-a001-02-000000016396587&n_ad=nad-a001-02-000000100232202&n_campaign_type=2&n_mall_id=ncp_1nsy9r_01&n_mall_pid=4986415701&n_ad_group_type=2&NaPm=ct%3Dl56mvra8%7Cci%3D0A80003GMa9w36qGI10%5F%7Ctr%3Dpla%7Chk%3Da05087ab918bc0b76f7893ebf884d0151b18a136" onclick="clickBanner('https://smartstore.naver.com/yaliyali/products/4986415701?n_media=27758&n_query=MOBICOOL&n_rank=1&n_ad_group=grp-a001-02-000000016396587&n_ad=nad-a001-02-000000100232202&n_campaign_type=2&n_mall_id=ncp_1nsy9r_01&n_mall_pid=4986415701&n_ad_group_type=2&NaPm=ct%3Dl56mvra8%7Cci%3D0A80003GMa9w36qGI10%5F%7Ctr%3Dpla%7Chk%3Da05087ab918bc0b76f7893ebf884d0151b18a136')" target="_blank">
 				<img style="width:240px; height:800px" src="resources/upload/dometic.png" alt="">
				</a>
			</div>
		</div>  
        <hr>
		<form  enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">작성자</span>
  				<input name="memberid" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
			
			<tr>
				<td style="height:54px;">
				<div class="form-floating">
  		<select class="form-select" name="productid" aria-label="Floating label select example" style="padding:0px; height:38px;">
    		<option selected name="productid" style="text-align:center;">후기상품을 고르세요</option>
    		<option value="바베큐폭립" style="text-align:center;">바베큐폭립</option>
    		<option value="부대찌개" style="text-align:center;">부대찌개</option>
    		<option value="감바스 알 아히요" style="text-align:center;">감바스 알 아히요</option>
    		<option value="사천마라탕" style="text-align:center;">사천마라탕</option>
    		<option value="스테이크 플래터" style="text-align:center;">스테이크 플래터</option>
    		<option value="만두전골" style="text-align:center;">만두전골</option>
    		<option value="토마호크스테이크" style="text-align:center;">토마호크스테이크</option>
    		<option value="밀푀유나베" style="text-align:center;">밀푀유나베</option>
    		<option value="꼬치구이 세트" style="text-align:center;">꼬치구이 세트</option>
  		</select>
  	<!-- 	<label for="floatingSelect">상품명</label> -->
				</div>
				
			<!-- <div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">상품명</span>
  				<input name="productid" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div> -->
				</td>
			</tr>
			
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">제목</span>
  				<input name="title" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
			
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">후기</span>
  				<input name="content" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>			
			
					
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">비밀번호</span>
  				<input name="pwd" type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
			
			
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">후기사진</span>
  				<input name="file" type="file" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
			
			
			<br>
			<br>
			<tr>
				<td colspan="2" align="center">
				<button type="button" class="btn btn-outline-success" onclick="insert(this.form)">리뷰등록</button>
				<button type="button" class="btn btn-outline-primary" onclick="location.href='reviewMain.do'">목록으로</button>
				</td>
			</tr>
		</table>
	</form>
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
     koreaIt ② academy  &nbsp;&nbsp; |&nbsp;&nbsp;   <a href="#">Privacy Policy</a>    &nbsp;&nbsp;|&nbsp;&nbsp;  Designed by <a href="https://github.com/SpringProjectKoreaIT/CampMarkett" rel="nofollow">CampMarketTeam</a> - <a href="https://github.com/SpringProjectKoreaIT/CampMarkett" title="free website templates">Group '2' </a>
	 	</div>
    </div>
  </div>
</footer>
</body>
</html>
