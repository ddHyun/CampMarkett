<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script src="resources/assets/js/httpRequest.js"></script>
<script src="resources/assets/js/jquery-3.6.0.min.js"></script>
</head>
<body>



 <form id="form" name="form" class="form_class" action="money.do" method="post">
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











	<form action="loginView.do" method="POST" name="f" align="center">
	<p>아이디 찾기</p>
		<div>
			<label>이름</label>
			<input type="text" name="name" id="name">
		</div>
		<div>
			<label>생년월일</label>
			<input type="text" name="birth" id="birth" placeholder="예)990101">
		</div>
		<div>
			<label>이메일</label>
			<input type="text" name="email" id="email" placeholder="예)abc@de.com">
		</div>
		<br>
		<div>
			<input type="button" value="아이디 찾기" id="idFindBtn" onclick="searchID()">
		</div>		
		<div id="idText" style="display:none">
			<label>아이디 :&emsp;<span id="id" style="color:red"></span></label>&emsp;
			<input type="button" value="로그인하러 가기" onclick="selfCloseSubmit()">
		</div>
	</form>
</body>
<script>
	//페이지 로딩되면 자동커서	
	$(function(){
		$('#name').focus();
	});		
	
	//팝업창 사라지고 부모창으로 이동
	function selfCloseSubmit(){
		var f = document.forms.f;
		document.domain = "localhost";
		opener.name = "DDD";
		f.target = opener.name;
		f.submit();
		self.close();
	}
	
	//아이디찾기
	function searchID(){
		var f = document.f;
		var name = f.name;
		var birth = f.birth;
		var email = f.email;
		var nameVal = name.value.trim();
		var birthVal = birth.value.trim();
		var emailVal = email.value.trim();
		
		if(nameVal==''){
			alert("이름을 입력해 주세요");
			name.focus();
			return;
		}
		if(birthVal==''){
			alert("생년월일을 입력해 주세요");
			birth.focus();		
			return;
		}
		if(emailVal==''){
			alert("이메일을 입력해 주세요");
			email.focus();
			return;
		}
		
		var url = "searchID.do";
		var param = "name="+nameVal+"&birth="+birthVal+"&email="+emailVal;
		sendRequest(url, param, cb, "POST");
	}
	
	function cb(){
		if(xhr.readyState==4 && xhr.status==200){
			var data = xhr.responseText;
			var json = (new Function('return'+data))();
			//회원정보가 없다면
			if(json[0].id == 'none'){
				alert("입력하신 정보와 일치하는 아이디가 존재하지 않습니다. 다시 시도해 주세요");
				$('#name').val('');
				birth.value="";
				email.value="";
				name.focus();
				return;
			}else{
				document.getElementById('idText').style.display = 'block';
				document.getElementById('id').innerHTML = json[0].id;
				//$('#id').text(json[0].id);
			}
		}
	}		
	
</script>
</html>