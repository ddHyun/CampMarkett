<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:::Everyday 캠프마켓:::</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
     <link rel="shortcut icon" href="resources/assets/img/images/favicon.ico" />
     <link rel="stylesheet" href="resources/assets/css/style.css">
	  <link rel="stylesheet" href="resources/assets/css/zerogrid.css" type="text/css" media="screen">
	<link rel="stylesheet" href="resources/assets/css/responsive.css" type="text/css" media="screen"> 
     <link rel="stylesheet" href="resources/assets/css/prettyPhoto.css">
     <link rel="stylesheet" href="resources/assets/css/login.css">
     <script src="resources/assets/js/jquery.js"></script>
     <script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
     <script src="resources/assets/js/superfish.js"></script>
     <script src="resources/assets/js/jquery.easing.1.3.js"></script>
     <script src="resources/assets/js/sForm.js"></script>
     <script src="resources/assets/js/jquery.prettyPhoto.js"></script>
	 <script src="resources/assets/js/css3-mediaqueries.js"></script>
<script src="resources/assets/js/httpRequest.js"></script>
<script src="resources/assets/js/jquery-3.6.0.min.js"></script>
<script>      
     $(document).ready(function(){
    /* $("a[data-gal^='prettyPhoto']").prettyPhoto({theme:'facebook'}); */   
        	$('#form').fadeIn(4000);
    });      
</script>
</head>
<body>
<div class="main">
<!--==============================header=================================-->
  <header> 
  <div class="zerogrid">
    <div class="col-full">
	<div class="wrap-col">
    <h1><a href="index.html"><img src="resources/assets/img/images/logo.png" alt="EXTERIOR"></a> </h1>
    
         <div class="menu_block">
           <nav>
            <ul class="sf-menu">
                   <li><a href="index.html">Home</a></li>
                   <li class="with_ul"><a href="index-1.html">About Us</a>
				   	<ul>
                         <li><a href="#"> cuisine</a></li>
                         <li><a href="#">Good rest</a></li>
                         <li><a href="#">Services</a></li>
                     </ul>
				   </li>
                   <li><a href="index-2.html">Menu</a></li>
                   <li><a href="index-3.html">Portfolio</a></li>
                   <li><a href="index-4.html">News </a></li>
                   <li class="current"><a href="index-5.html">로그인 / 회원가입</a></li>
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
   <!--  <div class="col-full">
      <h2>로그인</h2>
    </div>
    <div class="clear"></div> -->	
	<div class="row">
    <div class="portfolio">  
    
    
    <main  style="display: flex;
    align-items: center;
    justify-content: center;
    height: 75vh;
    width: 100%;
    background: url('resources/assets/img/images/bbq.jpg') no-repeat center center;
    background-size: cover;">
       <form id="form" name="form" class="form_class" action="money.do" method="post" style="display:none">
            <div class="form_div">
                <label>아이디</label>
                <input class="field_class" name="id" id="id" type="text" autofocus><br>
                <label>비밀번호</label>
                <input id="pwd" class="field_class" name="pwd" type="password">
            </div>
            <div class="info_div" style="display:flex;">
            <a style="border:none; box-shadow:none; background:none;
           	text-decoration:underline; width:200px; margin: 10px auto;" onclick="IDpopup()">
           	아이디 찾기</a>
           	<a style="border:none; box-shadow:none; background:none;
           	text-decoration:underline; width:200px; margin: 10px auto;" onclick="PWDpopup()">
           	비밀번호 찾기</a>           
            </div>  
            <div class="info_div">          
                <input class="submit_class" type="button" form="form" value="로그인"
                onclick="goLogin()">
            </div>
            <div class="info_div" style="margin-top:10px">
               	<p>아직 계정이 없으신가요?
               	<a style="border:none; box-shadow:none; background:none;
               	text-decoration:underline; width:200px; margin: 10px auto;" href="term.do">
               	회원가입하러 가기</a></p>
            </div>
        </form>
     </main>   
        
        
        
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
	//페이지 로딩되면 자동커서
	$(function(){
		$('#id').focus();
	});	
	
	function goLogin(){
		var id = document.getElementById("id");
		var idVal = id.value.trim();
		var pwd = document.getElementById("pwd");
		var pwdVal = pwd.value.trim();
		//유효성 검사
		if(idVal==''){
			alert("아이디를 입력해 주세요");
			id.focus();
			//input(text, pw)태그에 required속성을 붙여주면 빈칸이면 false반환  
			return false;
		}
		
		if(pwdVal==''){
			alert("비밀번호를 입력해주세요");
			pwd.focus();
			return false;
		}
		
		var url = "goLogin.do";
		var param = "id=" + idVal + "&pwd=" + pwdVal;
		sendRequest(url, param, cb, "POST");
	}
	
	function cb(){
		if(xhr.readyState==4 && xhr.status==200){
			var data = xhr.responseText;
			var json = (new Function('return'+data))();			
			
			if(json[0].param==0){
				alert("아이디나 비밀번호를 확인해 주세요");
				var id = document.getElementById("id");
				id.focus();
				id.value = "";
				document.getElementById("pwd").value="";
				
			}else{
				var name = json[1].name;
				alert("환영합니다 "+name+" 회원님~");				
				//var form = document.form;			
				document.form.submit();	
				
			}
		}
	}
	
	//팝업창 세팅인데 함수 안에 넣으면 팝업창 생성이 안됨
	/* function popupSetting(url, name, width, height){
		document.domain = "localhost";
		this.url = url;
		this.name = name;
		this.width = width;
		this.height = height;
		//화면 중앙에 위치
		var left = Math.ceil((window.screen.width - width)/2); 
		var top = 100;
		//var top = Math.ceil((window.screen.height - height)/2);
		var option = 
			"width="+width+",height="+height+", scrollbars=yes, resizable=no, left="+left+", top="+top;
		window.open(url, name, option);
	} */
	
	//아이디 찾기
	function IDpopup(){
		//console.log(document.domain);으로 확인함
		document.domain = "localhost";
		var url = "/camp/searchIDView.do";
		var name = "FIND MY ID";
		var width = 570;
		var height = 420;
		//화면 중앙에 위치
		var left = Math.ceil((window.screen.width - width)/2); 
		var top = 100;
		//var top = Math.ceil((window.screen.height - height)/2);
		var option = 
			"width="+width+",height="+height+", scrollbars=yes, resizable=no, left="+left+", top="+top;
		window.open(url, name, option);
	}
	
	//비밀번호 찾기
	function PWDpopup(){
		document.domain = "localhost";
		var url = "/camp/searchPwdView.do";
		var name = "FIND MY PWD";
		var width = 570;
		var height = 420;
		//화면 중앙에 위치
		var left = Math.ceil((window.screen.width - width)/2); 
		var top = 100;
		var option = 
			"width="+width+",height="+height+", scrollbars=yes, resizable=no, left="+left+", top="+top;
		window.open(url, name, option);
	} 	
</script>
</html>