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
     <script src="resources/assets/js/httpRequest.js"></script>
	 <script src="resources/assets/js/jquery-3.6.0.min.js"></script>
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
	// 게시글 삭제
	function del(f){
		
		var pwd = f.pwd.value;
		
		if(pwd == ''){
			
			alert("비밀번호를 입력해주세요.");
			return;
			
		} //if
		
		if(!confirm("삭제하시겠습니까?")){
			
			return;
			
		} //if
		
		var url = "reviewDelete.do";
													// 특수문자&한글 깨지지 않게 해주는 메서드
		var param = "idx=" + f.idx.value +"&pwd=" + encodeURIComponent(pwd);
													
		sendRequest(url, param, resultFn, "post");
		
		function resultFn(){
			if(xhr.readyState == 4 && xhr.status ==200){
				
				var data = xhr.responseText;
				var json = (new Function('return'+ data))();
				
				if(json[0].res =='no'){
					alert("삭제실패");
				} 
				
				alert("삭제되었습니다.");
				location.href="reviewMain.do";
				
			}
		}
	}
	// 게시글 수정
		function modify2(f){
			 		
					var ori_pwd = f.ori_pwd.value.trim();
					var pwd = f.pwd.value.trim();
						
					if(ori_pwd != pwd){
							
						alert("비밀번호가 일치하지 않습니다");
							
						return;
							
					}
						
					f.action = "reviewSelect.do";
					f.method = "POST";
					f.submit(); 
					
						
				}
	

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
	<div class="reviewRead" style="width:700px">
	
		<div class="card" style="object-fit: cover;">
 			 <img src="${pageContext.request.contextPath}/resources/upload/${vo.filename}" class="card-img-top" alt="...">
	    <div class="card-body">
    		<h5 class="card-title">${vo.title}</h5>
    		<p class="card-text">${vo.content}</p>
  		</div>
  	<ul class="list-group list-group-flush">
    	<li class="list-group-item"> ${vo.productid }</li>
   		<li class="list-group-item">📅 ${fn:split(vo.regdate,' ')[0]}</li>
    	<li class="list-group-item">👀${vo.readhit}</li>
    	<li class="list-group-item"><a href="joayoPush.do?idx=${vo.idx}">
									<font color="black">👍${vo.joayo}</font>  <!-- 글 제목  -->
									</a></li>
  	</ul>
  		<div class="card-body">
    		<a href="marketDetail?idx=${productIdx}" class="card-link">구매하러가기</a>
  		</div>
		</div>
	</div>

	<div align="center">
		<form>
			<input type="hidden" name="idx" value="${vo.idx}">
			<input type="hidden" name="ori_pwd" value="${vo.pwd}">
			
			<br>
			<br>
			<div class="form-floating"  style="width:200;">
			  <input type="password" class="form-control" id="floatingPassword" name="pwd" placeholder="Password">
  			  <label for="floatingPassword">비밀번호</label>
			</div>
			
			
			<br>
			<br>
			<button type="button" class="btn btn-outline-primary" onclick="del(this.form)">삭제</button>
			<button type="button" class="btn btn-outline-success" onclick="modify2(this.form)">수정</button>
			<button type="button" class="btn btn-outline-dark" onclick="location.href='reviewMain.do'">목록으로</button>
		</form>
	</div>
	
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