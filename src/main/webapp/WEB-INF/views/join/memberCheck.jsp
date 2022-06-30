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

</head>
<body>
<div class="main">
<!-- ==============================header================================= -->
  <header> 
  <div class="zerogrid">
    <div class="col-full">
	<div class="wrap-col">
    <h1><a href="index.html"><img src="resources/assets/img/images/logo.png" alt="EXTERIOR"></a> </h1>
    
         <div class="menu_block">
           <nav>
            <ul class="sf-menu">
                   <li><a href="home2">Home</a></li>
                   
                   <li><a href="resources/assets/html/index-2.html">밀키트</a></li>
                   <li><a href="resources/assets/html/index-3.html">후기</a></li>
                   <li><a href="resources/assets/html/index-4.html">주변 캠핑장 </a></li>
                   <li class="with_ul"><a href="resources/assets/html/index-1.html">회원 정보</a>
				   	<ul>
                         <li><a href="#"> cuisine</a></li>
                         <li><a href="#">Good rest</a></li>
                         <li><a href="#">Services</a></li>
                     </ul>
				   </li>
                   <li class="current"><a href="resources/assets/html/index-4.html">로그인 / 회원가입</a></li>
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
  <div class="zerogrid" style="width:100%">
    <div class="col-full">
      <h2></h2>
    </div>
    <div class="clear"></div>	
	<div class="row">
    <div class="portfolio">  
    
    
    <main  style="display: flex;
    align-items: center;
    justify-content: center;
    height: 75vh;
    width: 100%;
    background: url('resources/assets/img/images/bbq3.jpg') no-repeat center center;
    background-size: cover;">
    <div class="main2" style="width:800px;
  margin:160px auto;
  text-align:center;">
       <form id="form" name="form" class="form_class" action="money.do" method="post" style="display:none;">
            <div class="form_div">
                <label>아이디</label>
                <input class="field_class" name="id" id="id" type="text" autofocus><br>
                <label>비밀번호</label>
                <input id="pwd" class="field_class" name="pwd" type="password">
            </div>
            <div class="info_div" style="display:flex;">
         <!--    <a style="border:none; box-shadow:none; background:none; cursor:pointer;
           	text-decoration:underline; width:200px; margin: 10px auto;" onclick="IDpopup()">
           	아이디 찾기</a> -->
  			<a class="info_div popup-btn" href="#">아이디 찾기</a>
           	<!-- <a style="border:none; box-shadow:none; background:none; cursor:pointer;
           	text-decoration:underline; width:200px; margin: 10px auto;" onclick="PWDpopup()">
           	비밀번호 찾기</a>  -->          
  			<a class="info_div popup-btn" href="#">비밀번호 찾기</a>
            </div>  
            <div class="info_div">          
                <input class="submit_class" type="button" form="form" value="로그인"
                onclick="goLogin()">
            </div>
            <div class="info_div" style="margin-top:10px">
               	<p>아직 계정이 없으신가요?
               	<a style="border:none; box-shadow:none; background:none;
               	text-decoration:underline; width:200px; margin: 10px auto;" href="memberCheck.do">
               	회원가입하러 가기</a></p>
            </div>
        </form>
	</div>
</main> 

  
	<!-- 아이디찾기 팝업 -->
      <div class="popup-wrap">
    <div class="popup-box">
      <form id="form1" name="form1" class="form_class" method="post">
            <div class="form_div">
                <label>이름</label>
                <input class="field_class" name="name" id="name" type="text" autofocus><br>
                 <label>생년월일</label>
                <input class="field_class" name="birth" id="birth" placeholder="예)990101" type="text"><br>
                <label>이메일</label>
                <input class="field_class" name="email" type="text" id="email" placeholder="예)abc@def.com">
            </div>
            <div class="info_div" id="idDiv">          
                <input class="submit_class" type="button" form="form" value="아이디 찾기"
                onclick="searchID()">
            </div>
            <div  class="info_div" style="display:flex; display:none; margin:20 auto" id="idText">
				<label>아이디 :&emsp;<span id="searchId" style="color:#e2827e; font-size:20px"></span></label>&emsp;		
			</div>          
		      <div style="margin-top:15px">
		      	<a class="close-btn popup-close" href="#">로그인 화면으로 이동</a>
		      </div>
        </form>
    </div>
  </div>  
  
  
  <!-- 비밀번호 찾기 팝업 -->
      <div class="popup-wrap">
    <div class="popup-box">
      <form id="form2" name="form2" class="form_class" method="post">
       	<div class="form_div">
            <label>아이디</label>
            <input class="field_class" name="id" id="id" type="text" autofocus><br>
            <label>이름</label>
            <input class="field_class" name="name" id="name" type="text"><br>
            <label>이메일</label>
            <input class="field_class" name="email" type="text" id="email" placeholder="예)abc@def.com">
       	</div>
       	<div class="info_div" id="pwdDiv">          
                <input class="submit_class" type="button" form="form" value="비밀번호 찾기"
                onclick="searchPwd()">
        </div>
         <div  class="info_div" style="display:flex; display:none; margin:20 auto" id="pwdDiv2">
         	<div class="form_div">
				<label>새로운 비밀번호</label>
	            <input class="field_class" name="pwd11" id="pwd11" type="password" autofocus><br>
				<label>비밀번호 확인</label>
	            <input class="field_class" name="pwd22" id="pwd22" type="password"><br>           
       		</div>
       		<div class="info_div" id="pwdDiv3">          
                <input class="submit_class" type="button" form="form" value="비밀번호 변경하기"
                onclick="changePwd()">
        	</div>
        	<input type="hidden" id="idx">
		</div>          
	    <div style="margin-top:15px">
	      	<a class="close-btn popup-close" href="#">로그인 화면으로 이동</a>
	    </div>				 
	</form>
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
                   <li><a href="index.html">Home</a></li>
                   <li><a href="index-1.html">About Us</a></li>
                   <li><a href="index-2.html">Menu</a></li>
                   <li class="current"><a href="index-3.html">Portfolio</a></li>
                   <li><a href="index-4.html">News </a></li>
                   <li><a href="index-5.html">Contacts</a></li>
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
<!-- ==============================footer================================= -->

<footer>    
  <div class="zerogrid">
    <div class="col-full">
		<div class="wrap-col">
     Gourmet © 2013  &nbsp;&nbsp; |&nbsp;&nbsp;   <a href="#">Privacy Policy</a>    &nbsp;&nbsp;|&nbsp;&nbsp;  Designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster</a> - <a href="https://www.zerotheme.com/" title="free website templates">ZEROTHEME</a>
	 	</div>
    </div>
  </div>
</footer>
























	<p align="center">회원가입 유무 확인</p>
	<form name="f" align="center">
		<div>
			<label>이름</label>
			<input type="text" name="name" id="name">
		</div>
		<div>
			<label>이메일</label>
			<input type="text" name="email" id="email" placeholder="예)abc@def.com">
		</div>
		<div>				
			<input type="button" value="가입 확인하기" onclick="checkMember()">			
		</div>
	</form>
</body>
<script>

$(document).ready(function(){
   	$('#form').fadeIn(1000);
});

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
					var f = document.f;
					f.action = "term.do";
					f.method = "post";
					console.log("멤버체크페이지에서/이름: "+name.value+"이메일: "+email.value);
					f.submit();
				}
			}else{
				if(!confirm("정보가 존재합니다. 로그인 페이지로 이동합니다.")){
					return;
				}else{
					location.href="loginView.do";
				}
			}
		}
	}
		
</script>
</html>