<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>:::Everyday 캠프마켓:::</title>
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="resources/assets/css/style.css">
     <link rel="stylesheet" href="resources/assets/css/login.css">
    <link rel="stylesheet" href="resources/assets/css/popup.css">
	 <link rel="stylesheet" href="resources/assets/css/zerogrid.css" type="text/css" media="screen">
	 <link rel="stylesheet" href="resources/assets/css/responsive.css" type="text/css" media="screen"> 
     <script src="resources/assets/js/jquery.js"></script>
     <script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
     <script src="resources/assets/js/superfish.js"></script>
     <script src="resources/assets/js/jquery.easing.1.3.js"></script>
     <script src="resources/assets/js/sForm.js"></script>
	 <script src="resources/assets/js/css3-mediaqueries.js"></script>
	<script src="resources/assets/js/jquery-3.6.0.min.js"></script>
	<script src="resources/assets/js/httpRequest.js"></script>
	<script src="resources/assets/js/jquery-3.6.0.min.js"></script>

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
<!--=======content================================-->

<div class="content" style="width"800px;">
  <div class="zerogrid">
  	<div class="row">
	<form action="joinView.do" name="form" style="width:75%; margin:auto">
	<div class="row">
	<h2>약관동의</h2>	
	<p style="font-size:12px; color: #79302b;">
	CampMarket의 서비스를 이용하기 위해 이용자는 이용 약관을 읽어보시고 동의하셔야 합니다.<br>
	회원가입은 무료이며, 가입 즉시 서비스를 이용하실 수 있습니다. 아래의 이용 약관을 반드시 읽고 동의해 주십시오.
	</p>
	</div>	
	
	<div class="form_div">
        <label>아이디</label>
        <input class="field_class" name="id" id="id" type="text" autofocus><br>
        <label>비밀번호</label>
        <input class="field_class" name="pwd" id="pwd" type="password">
        <label>비밀번호</label>
        <input class="field_class" name="pwd" id="pwd" type="password">
        <label>아이디</label>
        <input class="field_class" name="id" id="id" type="text"><br>
        <label>아이디</label>
        <input class="field_class" name="id" id="id" type="text"><br>
        <label>아이디</label>
        <input class="field_class" name="id" id="id" type="text"><br>
        <label>아이디</label>
        <input class="field_class" name="id" id="id" type="text"><br>
        <label>아이디</label>
        <input class="field_class" name="id" id="id" type="text"><br>
        <label>아이디</label>
        <input class="field_class" name="id" id="id" type="text"><br>
    </div>
	

	<div  style="margin-top:20px">
		<input type="checkbox" id="term3" class="terms">
		<span style="font-size:20px">이용약관과 개인정보처리방침사항에 모두 동의합니다.</span><br><br>
		<a href="joinView.do" class="btn" data-type="submit" 
		style="width:200px; height:30px; line-height:30px; 
		margin-top:5px; font-size:20px; font-weight:bold; letter-spacing:2px">다음 단계</a>			
	</div>
	<div style="margin-top:50px"></div>
</form>






	
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
                   <li><a href="index-3.html">Portfolio</a></li>
                   <li class="current"><a href="index-4.html">News </a></li>
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
                       <a href="#" class="btn">subscribe</a> 
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
                   <li class="current"><a href="resources/assets/html/index-4.html">로그인/회원가입</a></li>
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
    <!-- <div class="col-full">
      <h2></h2>
    </div> -->
    <div class="clear"></div>	
	<div class="row">
    <div class="portfolio">  
    
    
    <main  style="display: flex;
    align-items: center;
    justify-content: center;
   	height: 85vh;
    width: 100%;
    background: url('resources/assets/img/images/bbq.jpg') no-repeat center center;
    background-size: cover;">
    <div class="main2" style="width:800px; margin:160px auto; text-align:center;">
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
      <form id="popForm" name="popForm" class="form_class" method="post">
            <div class="form_div">
                <label>이름</label>
                <input class="field_class" name="popName" id="popName" type="text" autofocus><br>
                 <label>생년월일</label>
                <input class="field_class" name="popBirth" id="popBirth" placeholder="예)990101" type="text"><br>
                <label>이메일</label>
                <input class="field_class" name="popEmail" type="text" id="popEmail" placeholder="예)abc@def.com">
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
      <form id="popPwdForm" name="popPwdForm" class="form_class" method="post">
       	<div class="form_div">
            <label>아이디</label>
            <input class="field_class" name="popPwdId" id="popPwdId" type="text" autofocus><br>
            <label>이름</label>
            <input class="field_class" name="popPwdName" id="popPwdName" type="text"><br>
            <label>이메일</label>
            <input class="field_class" name="popPwdEmail" type="text" id="popPwdEmail" placeholder="예)abc@def.com">
       	</div>
       	<div class="info_div" id="pwdDiv">          
                <input class="submit_class" type="button" form="form" value="비밀번호 찾기"
                onclick="searchPwd()">
        </div>
         <div  class="info_div" style="display:flex; display:none; margin:20 auto" id="pwdDiv2">
         	<div class="form_div">
				<label>새로운 비밀번호</label>
	            <input class="field_class" name="newPwd" id="newPwd" type="password" autofocus><br>
				<label>비밀번호 확인</label>
	            <input class="field_class" name="newPwd2" id="newPwd2" type="password"><br>           
       		</div>
       		<div class="info_div" id="pwdDiv3">          
                <input class="submit_class" type="button" form="form" value="비밀번호 변경하기"
                onclick="changePwd()">
        	</div>
        	<input type="hidden" id="idx">
		</div>          
	    <div style="margin-top:15px">
	      	<a class="close-btn popup-close" href="##">로그인 화면으로 이동</a>
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


















	<p align="center">회원가입</p>
	<form name="form" action="join" method="post">
		<table border="1" align="center" width="800px">
			<tr>
				<td colspan="2">
				기본정보 입력&nbsp;<span style="color:red">*표시는 필수 입력항목입니다.</span>
				</td>
			</tr>			
			<tr>
				<th><span style="color:red">*</span>아이디</th>
				<td>				
					<input type="text" name="id" id="id">
					<input type="button" value="중복확인" id="idCheckBtn"><br>		
					<span style="color:#787878">5~15자리의 영문자와 숫자만 입력이 가능합니다(시작은 영문자)</span>				
				</td>				
			</tr>
			<tr>
				<th><span style="color:red">*</span>비밀번호</th>
				<td>
				<input type="password" name="pwd" id="password1">
				<span id="pwdErrorMsg" style="color:red">올바른 형식이 아닙니다</span><br>
				<span style="color:#787878">8~15자리의 영문과 숫자를 모두 사용해 입력해야 합니다(특수문자 제외)</span>
				</td>
			</tr>
			<tr>
				<th><span style="color:red">*</span>비밀번호 확인</th>
				<td>
				<input type="password" name="pwd2" id="password2">
				<span id=equalMsg style="color:blue">비밀번호가 일치합니다</span>
				<span id=notEqualMsg style="color:red">비밀번호가 일치하지 않습니다</span>				
				</td>
			</tr>
			<tr>
				<td colspan="2">개인정보 입력</td>
			</tr>
			<tr>
				<th><span style="color:red">*</span>이름</th>
				<td>
					<input type="text" name="name" id="name" value="${sessionScope.wannaName}">
					<!-- 성별 -->
					<input type="checkbox" name="gender" value="남자" onclick="chooseGender(this)" checked>남자
					<input type="checkbox" name="gender" value="여자" onclick="chooseGender(this)">여자&emsp;
					<span id=nameErrorMsg style="color:red">이름은 한글만 입력이 가능합니다</span>
				</td>
			</tr>	
			<tr>
				<th><span style="color:red">*</span>생년월일</th>
				<td>
					<input type="text" id="birth" name="birth">
					<span style="color:#787878">6자리로 입력해주세요 (예) 990101)</span>
					<span id="birthErrorMsg" style="color:red">올바른 형식이 아닙니다</span>
				</td>
			</tr>		
			<tr>
				<th><span style="color:red">*</span>이메일</th>
				<td>
				<input name="email" id="email" value="${sessionScope.wannaEmail}">
				<input type="button" value="이메일 확인" onclick="verifyEmail()">
				<span id="emailErrorMsg" style="color:red">올바른 형식이 아닙니다</span><br>
				<span style="color:#787878">비밀번호 초기화 메일 수신 등에 반드시 필요한 정보이므로 정확히 입력해주세요.</span>
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>
					<input type="text" id="hometel" name="hometel" placeholder="예)032-111-1111">
					<span id="hometelErrorMsg" style="color:red">올바른 형식이 아닙니다</span>
				</td>
			</tr>
			<tr>
				<th><span style="color:red">*</span>휴대전화번호</th>
				<td>
				<input type="text" name="mobiletel" id="mobiletel" placeholder="예) 010-2345-6789">
				<input type="button" value="본인 인증하기" onclick="certifyTel()"><br>
				</td>
			</tr>
			<tr>
				<th><span style="color:red">*</span>주소</th>
				<td>
				<input type="text" id="address" name="addr" style="width:500px;">
				<!-- 주소찾기 버튼 클릭 시  주소API로 이동 -->
				<input type="button" value="주소찾기" id="addressBtn" onclick="goPopup();">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="취소하기" onclick="location.href='##########'">
					<input type="button" value="가입하기" onclick="join()">
				</td>
			</tr>
		</table>
	</form>
</body>
<script>	
$(document).ready(function(){
   	$('#form').fadeIn(500);
});
	//주소찾기 API
	function goPopup(){
		var pop = window.open("jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=no"); 		
	}
	//주소찾기 API cb
	function jusoCallBack(roadFullAddr){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		var address = document.querySelector("#address");
		address.value = roadFullAddr;
		document.getElementById("addressBtn").disabled = true;
	}	
		
	//성별 하나만 체크하기
	function chooseGender(target){
	    var gender = document.getElementsByName("gender");
	    for(var i=0; i<gender.length; i++){
	        if(gender[i] != target){
	        	gender[i].checked = false;
	        }
	    }
	}
	
	//휴대전화인증
	function certifyTel(){
		//유효성 체크
		var phonePattern = /^01([0:1:6:7:8:9]?)-([0-9]{3,4})-([0-9]{4})$/;
		var tel = document.getElementById("mobiletel");
		var mobiletel = tel.value.trim();
		
		if(mobiletel == ''){
			alert("전화번호를 입력해 주세요");
			return;
		}
		if(!phonePattern.test(mobiletel)){
			alert("잘못된 형식의 전화번호입니다");
			tel.value='';
			tel.focus();
			return;
		}
	}
		
	
	//가입하기
	function join(){
		var f = document.form;
		var id = f.id.value;
		var pwd = f.pwd.value;
		var name = f.name.value;
		//체크박스 value받기
		var gender = document.querySelector('input[name="gender"]:checked').value;
		var birth = f.birth.value;
		var hometel = f.hometel.value;
		var mobiletel = f.mobiletel.value;
		var email = f.email.value;
		var addr = f.addr.value;	

	
		if(name==''){
			alert("이름을 입력해주세요");
			f.name.focus();
			return;
		}
		
		if(birth==''){
			alert("생년월일을 입력해주세요");
			f.birth.focus();
			return;
		}
		
		if(pwd==''){
			alert("비밀번호를 입력해주세요");
			f.pwd.focus();
			return;
		}
		
		if(email==''){
			alert("이메일을 입력해주세요");
			f.email.focus();
			return;
		}
		
		if(hometel==''){
			hometel="none";
		}
		
		if(addr==''){
			alert("주소를 입력해주세요");
			f.addr.focus();
			return;
		}
			
		var url = "join.do";
		var param = "id="+id+"&pwd="+pwd+"&name="+name+"&gender="+gender+"&birth="
		+birth+"&email="+email+"&hometel="+hometel+"&mobiletel="+mobiletel+"&addr="+addr;
		
		console.log(param);
		sendRequest(url, param, cb, "POST");
	}
	
	function cb(){
		if(xhr.readyState==4 && xhr.status==200){
			var data = xhr.responseText;
			var json = (new Function('return'+data))(); 
			if(json[0].param = 'y'){
				alert("회원가입이 완료되었습니다. 로그인 페이지로 이동합니다.");
				location.href = "loginView.do";
			}else{
				alert("프로그램 상의 문제가 발생했습니다. 관리자에게 문의해 주세요");
				location.href= "관리자 항의 메일 보내기";
			}
		}
	}	

//페이지 로딩되면 자동커서
	$(function(){
		$('#id').focus();
	});
	
	var pwd1 = $('#password1');
	var pwd2 = $('#password2');
	var pwdPattern = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,15}$/;
	var equalMsg = $('#equalMsg');
	var notEqualMsg = $('#notEqualMsg');
	var pwdErrorMsg = $('#pwdErrorMsg');
	
	//비밀번호 유효성 체크
	pwdErrorMsg.hide();
	
	pwd1.on('input', function(){
		var pwdVal = $.trim(pwd1.val());
		if(!pwdPattern.test(pwdVal)){
			pwdErrorMsg.show();
			if(pwd1.val()==''){
				pwdErrorMsg.hide();
			}
		}else{//이부분을 적어줘야 올바른 형식일 때 에러메시지 지워짐
			pwdErrorMsg.hide();
		}
	});
	
	
	//비밀번호1, 비밀번호2 일치/불일치
	equalMsg.hide();
	notEqualMsg.hide();
	
	pwd2.on('input', function(){
		var pwd1Val = $.trim(pwd1.val());
		var pwd2Val = $.trim(pwd2.val());
	
		if(pwd1Val==pwd2Val){
			equalMsg.show();
			notEqualMsg.hide();
		}else{
			equalMsg.hide();
			notEqualMsg.show();
			if(pwd2.val()==''){
				notEqualMsg.hide();
				equalMsg.hide();
			}
		}		
	});	
	
	//이메일 유효성 체크
	var emailErrorMsg = $('#emailErrorMsg');
	var email = $('#email');
	var emailPattern =
		 /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	emailErrorMsg.hide();
		 
	email.on('input', function(){
		var emailVal = $.trim(email.val());
		if(!emailPattern.test(emailVal)){
			emailErrorMsg.show();
		}else{
			emailErrorMsg.hide();
		}
	});
	
	//이름 유효성 체크
	var nameErrorMsg = $('#nameErrorMsg');
	var namePattern = /^[가-힣]{2,6}$/;
	
	nameErrorMsg.hide();
	
	$('#name').on('input', function(){
		var nameVal = $.trim($('#name').val());
		if(!namePattern.test(nameVal)){
			nameErrorMsg.show();
			if($('#name').val()==''){
				nameErrorMsg.hide();
			}
		}else{
			nameErrorMsg.hide();
		}
	});
	
	//생년월일 유효성 체크
	var birthErrorMsg = $('#birthErrorMsg');
	var birthPattern = /^[0-9]{6}$/;
	
	birthErrorMsg.hide();
	
	$('#birth').on('input', function(){
		var birthVal = $.trim($('#birth').val());
		var birthLen = $('#birth').val().length;
		//길이가 6자가 넘어가면 오류 메시지 띄운다
		if(birthLen > 6){
		if(!birthPattern.test(birthVal)){
			birthErrorMsg.show();
			if($('#birth').val()==''){
			birthErrorMsg.hide();
			}
		}else{
			birthErrorMsg.hide();
			}
		}else{
			birthErrorMsg.hide();
		}
	});
	
	//집전화 유효성 체크
	var hometelErrorMsg = $('#hometelErrorMsg');
	var phonePattern = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/;
	var hometel = $('#hometel');
	
	hometelErrorMsg.hide();
	
	hometel.on('input', function(){
		var hometelVal = $.trim(hometel.val());
		if(!phonePattern.test(hometelVal)){
			hometelErrorMsg.show();
			if(hometel.val()==''){
				hometelErrorMsg.hide();
			}
		}else{
			hometelErrorMsg.hide();
		}
	});
	
	//아이디 중복체크 => 버튼에 onclick 적지 말고 사용하기
	$('#idCheckBtn').on('click', function(){
		var idPattern = /^[a-zA-Z]{1}[a-zA-Z0-9]{4,14}$/;
		var id = $('#id');	
		var idVal = $.trim(id.val());	
		if(idVal==''){
			alert("사용할 아이디를 입력해주세요");
			id.focus();
			return;
		}
		if(!idPattern.test(idVal)){			
			alert("특수문자를 제외한 5~15자리의 영문자, 숫자만 입력해 주세요");
			id.focus();
			id.val('');
			return;
		}
		console.log(idVal);
		$.ajax({
			url: "checkID.do",
			type: "POST",
			data: {id:$('#id').val()},
			datatype: "json"
		}).done(function(data){
				var json = (new Function('return'+data))();
				if(json[0].param == 'n'){
					if(!confirm("사용 가능한 아이디입니다. 사용하시겠습니까?")){
						id.val('');
						id.focus();
						return;
						}else{
							$('#idCheckBtn').attr('disabled', true);
							id.attr('disabled', true);
						}
					}else{
						alert("중복된 아이디입니다. 다시 시도해 주세요");
						id.val('');
						id.focus();
						return;
					}
			}).fail(function(){
				alert("ajax 오류");
		});	
	});	
	
	//이메일 확인
	function verifyEmail() {
		alert("이메일이 정상적으로 확인되었습니다");
		return;
	}
	
	//휴대전화 본인인증
	function certifyTel() {
		alert("인증이 정상적으로 처리되었습니다");
		return;
	}

</script>
</html>