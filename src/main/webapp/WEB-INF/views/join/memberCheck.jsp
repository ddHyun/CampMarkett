<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:::Everyday 캠프마켓:::</title>
     <meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     <link rel="icon" href="resources/assets/img/images/favicon.ico">
     <link rel="shortcut icon" href="resources/assets/img/images/favicon.ico" />
     <link rel="stylesheet" href="resources/assets/css/style.css">
     <link rel="stylesheet" href="resources/assets/css/login.css">
     <link rel="stylesheet" href="resources/assets/css/popup.css">
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
		 <script src="resources/assets/js/menuBar.js"></script>

</head>
<body>
<div class="main">
<!-- ==============================header================================= -->
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
                   <li id="loginTag" class="current"><a href="login_Temp">로그인</a></li>
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
<!-- =======content================================ -->

<div class="content">
  <div class="zerogrid" style="margin:80px 300px 60px 300px;">
   <!--  <div class="col-full" style="margin:0>
      <h2">회원가입 유무 확인</h2>
    </div> -->
    <div class="clear"></div>	
	<div class="row">
    <div class="portfolio">  
    
    
    <main  style="display: flex;
    align-items: center;
    justify-content: center;
    height: 65vh;
   width: 100%;
    background: url('resources/assets/img/images/bbq6.jpg') no-repeat center center;
    background-size: cover;">
    <div class="main2" style="width:800px;
  margin:250px auto;
  text-align:center;">
       <form id="form" name="form" class="form_class" action="money.do" method="post" style="display:none;">
            <div class="form_div">
                <label>이름</label>
                <input class="field_class" name="name" id="name" type="text" autofocus><br>
                <label>이메일</label>
                <input id="email" class="field_class" name="email" type="text">
            </div>        
            <div class="info_div">          
                <input class="submit_class" type="button" form="form" value="가입 확인하기"
                onclick="checkMember()">
            </div>           
        </form>
	</div>
</main>         
</div>
</div>
   
    <div class="row">
    <div class="bottom_block">
      <div class="col-1-2">
        
       
      </div>
     <div class="col-1-2">
        
          </div>
      </div>
	  </div>
    </div>
  </div>
</div>
<!-- ==============================footer================================= -->

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

<script>
//input창 띄우기
	$(document).ready(function(){
	   	$('#form').fadeIn(1000);
	});

	//회원유무 확인하기
	function checkMember(){
	var name = document.getElementById("name").value.trim();
	var email = document.getElementById("email").value.trim();
		
		//유효성 검사
		if(name==''){
			alert("이름을 입력해주세요");
			return;
		}
		
		var name1 = document.getElementById("name");
		var namePattern = /^[가-힣]{2,6}$/;
		if(!namePattern.test(name)){
			alert("한글 이외의 문자는 입력이 불가능합니다");
			 name1.value="";
			 name1.focus();
			return;
		}
		
		if(email==''){
			alert("이메일을 입력해주세요");
			return;
		}
		
		var email1 = document.getElementById("email");
		var emailPattern =
			 /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if(!emailPattern.test(email)){
			alert("이메일 형식이 올바르지 않습니다");
			email1.value="";
			email1.focus();
			return;
		}
		
		var url = "memberOrNot.do";
		var param = "name=" + name + "&email=" + email;
		console.log("name: "+name+"/email: "+email)
		sendRequest(url, param, cb, "POST");						
	}	
	
	function cb() {
		if(xhr.readyState==4 && xhr.status==200){
			var data = xhr.responseText;
			var json = (new Function('return'+data)());
			var name = document.getElementById("name");
			var email = document.getElementById("email");				
			
			if(json[0].param=='n'){
				if(!confirm("회원정보가 존재하지 않습니다. 회원가입 창으로 이동하시겠습니까?")){
					$('#name').focus();
					name.value="";
					email.value="";
				}else{	
					//파라미터 값 다른 페이지로 넘기기
					var f = document.form;
					f.action = "term.do";
					f.method = "post";
					console.log("멤버체크페이지에서/이름: "+name.value+"이메일: "+email.value);
					f.submit();
				}
			}else{
				if(!confirm("정보가 존재합니다. 로그인 페이지로 이동합니다.")){
					return;
				}else{
					location.href="login_Temp";
				}
			}
		}
	}
		
</script>
</html>