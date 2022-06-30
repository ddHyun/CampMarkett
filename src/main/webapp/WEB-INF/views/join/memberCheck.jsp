<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/assets/js/httpRequest.js"></script>
<script src="resources/assets/js/jquery-3.6.0.min.js"></script>
<script>

	$(function(){
		$('#name').focus();
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
</head>
<body>
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
</html>