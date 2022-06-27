<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/assets/js/httpRequest.js"></script>
<script src="resources/assets/js/jquery-3.6.0.min.js"></script>
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
			return;
		}
		
		if(pwdVal==''){
			alert("비밀번호를 입력해주세요");
			pwd.focus();
			return;
		}
		
		var url = "goLogin.do";
		var param = "id=" + idVal + "&pwd=" + pwdVal;
		sendRequest(url, param, cb, "POST");
	}
	
	function cb(){
		if(xhr.readyState==4 && xhr.status==200){
			var data = xhr.responseText;
			var json = (new Function('return'+data))();			
			
			if(json[0].param=='n'){
				alert("아이디나 비밀번호를 확인해 주세요");
				var id = document.getElementById("id");
				id.focus();
				id.value = "";
				document.getElementById("pwd").value="";
				
			}else{
				alert("어서오세요 회원님~");
				location.href="#############";
			}
		}
	}
	
	function IDpopup(){
		//console.log(document.domain);으로 확인함
		document.domain = "localhost";
		var url = "/camp/searchIDView.do";
		var name = "아이디 찾기";
		var option = "width=570,height=420, scrollbars=yes, resizable=no";
		window.open(url, name, option);
	}
</script>
</head>
<body>
	<form method="POST" action="########" align="center">
	<p>로그인</p>
		<div>
			<label>아이디</label>
			<input type="text" name="id" id="id">
		</div>
		<div>
			<label>비밀번호</label>
			<input type="password" name="pwd" id="pwd">
		</div>
		<div>			
			<input type="button" value="로그인" onclick="goLogin()">
			<input type="button" value="회원가입" onclick="location.href='joinView2.do'">
		</div>
		<div>
			<span style="cursor:pointer; text-decoration:underline;" onclick="IDpopup()">아이디 찾기</span>
			<span style="cursor:pointer; text-decoration:underline;" onclick="IDpopup()">비밀번호 찾기</span>
		</div>
	</form>
</body>
</html>