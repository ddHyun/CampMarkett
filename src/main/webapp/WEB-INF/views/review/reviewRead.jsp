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
     <body>
       <div class="main">
<!--==============================header=================================-->
 <header> 
  <div class="zerogrid">
    <div class="col-full">
	<div class="wrap-col">
    <h1><a href="home"><img src="resources/assets/img/images/logo2.png" alt="EXTERIOR"></a> </h1>
    
         <div class="menu_block">
           <nav>
            <ul class="sf-menu">
                   <li><a href="home">Home</a></li>
                   
                   <li><a href="marketMain_Temp">밀키트</a></li>
                   <li class="current"><a href="reviewMain_Temp">후기</a></li>
                   <li><a href="campingAreaMain_Temp">주변 캠핑장 </a></li>
                   <li class="with_ul"><a href="memberInfo_Temp">회원 정보</a>
				   	<ul>
                         <li><a href="#"> cuisine</a></li>
                         <li><a href="#">Good rest</a></li>
                         <li><a href="#">Services</a></li>
                         <li><a href="makeSampleId">샘플 로그인!</a></li>
                     </ul>
				   </li>
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
 <!-- <div class="slider-relative">
    <div class="slider-block">
      <div class="slider">
        <ul class="items">
          <li><img src="resources/assets/img/images/slide.jpg" alt=""></li>
          <li><img src="resources/assets/img/images/slide1.jpg" alt=""></li>
          <li class="mb0"><img src="resources/assets/img/images/slide2.jpg" alt=""></li>
        </ul>
      </div>
    </div>
 </div> -->
<!--=======content================================-->

<div class="content page1">
  <div class="zerogrid">
      
	  <div class="row">
      <div class="col-full">
	  	<div class="wrap-col">
        <div class="car_wrap">
        <div class="review" align="center">
        <hr>
	<table id="revDetail" border="1" align="center" width="700">
		<tr>
			<th>제목</th>
				<td>${vo.title}</td>
		</tr>
		
		<tr>
			<th>후기상품</th>
				<td>${vo.productid }</td>
		</tr>
		
		<tr>
			<th>내용</th>
				<td>${vo.content}</td>
		</tr>
		
		
		<tr>
			<th>사진</th>
				<c:if test="${vo.filename ne 'no_file'}">
					<td><img src="${pageContext.request.contextPath}/resources/upload/${vo.filename}" width="400"></td>	
				</c:if>
		</tr>
		
		<tr>
			<th>작성일</th>
				<td>${fn:split(vo.regdate,' ')[0]}</td>
		</tr>
		
		<tr>
			<th>조회수</th>
			<td>${vo.readhit}</td>	
		</tr>
		<tr>
			<th> 추천수</th>
				<td>
					
					<a href="joayoPush.do?idx=${vo.idx}">
					<font color="black">👍${vo.joayo}</font>  <!-- 글 제목  -->
					</a>
				



				</td>
		</tr>

		
	</table>
	<div align="center">
		<form>
			<input type="hidden" name="idx" value="${vo.idx}">
			<input type="hidden" name="ori_pwd" value="${vo.pwd}">
			비밀번호<input type="password" name="pwd">
			<input type="button" value="삭제" width="100" height="100" onclick="del(this.form)">
			<input type="button" value="수정" width="100" height="100" onclick="modify2(this.form)">
			<input type="button" value="목록으로" width="100" height="100" onclick="location.href='reviewMain.do'">
		</form>
	</div>
	
	</div>
      </div>
	  </div>
    </div>
	</div>
	<div class="row">
    <div class="bottom_block">
      <div class="col-1-2">
        <h3>Follow Us</h3>
        <div class="socials">
          <a href="#"></a>
          <a href="#"></a>
          <a href="#"></a>
        </div>
        <nav><ul>
                   <li class="current"><a href="home">Home</a></li>
                   <li ><a href="resources/assets/html/index-1.html">About Us</a></li>
                   <li><a href="resources/assets/html/index-2.html">Menu</a></li>
                   <li><a href="resources/assets/html/index-3.html">Portfolio</a></li>
                   <li><a href="resources/assets/html/index-4.html">News </a></li>
                   <li><a href="resources/assets/html/index-5.html">Contacts</a></li>
                 </ul></nav>
      </div>
      <div class="col-1-2">
        <h3>Email Updates</h3>
        <p class="col1">Join our digital mailing list and get news<br> deals and be first to know about events</p>
        <form id="newsletter">
                  <div class="success">Your subscribe request has been sent!</div>
                  <label class="email">
                       <input type="email" value="Enter e-mail address" >
                       <a href="#" class="btn" data-type="submit">subscribe</a> 
                        <span class="error">*This is not a valid email address.</span>
                  </label> 
              </form> 
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