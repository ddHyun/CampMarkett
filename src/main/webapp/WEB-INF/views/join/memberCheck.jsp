<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/assets/js/httpRequest.js"></script>
<script>	

	function checkMember(){
	var name = document.getElementById("name").value;
	var birth = document.getElementById("birth").value;
		
		//유효성 검사
		if(name==''){
			alert("이름을 입력해주세요");
			return;
		}
		
		var namePattern = /^[가-힣]{2,6}$/;
		if(!namePattern.test(name)){
			alert("한글 이외의 문자는 입력이 불가능합니다");
			return;
		}
		
		if(birth==''){
			alert("생년월일을 입력해주세요");
			return;
		}
		
		var birthPattern = /^[0-9]{6}$/;
		if(!birthPattern.test(birth)){
			alert("생년월일은 6자로 입력해주세요    예)990101");
			return;
		}
		
		var url = "memberOrNot.do";
		var param = "name=" + name + "&birth=" + birth;
		
		sendRequest(url, param, cb, "POST");						
	}	
	
	function cb() {
		if(xhr.readyState==4 && xhr.status==200){
			var data = xhr.responseText;
			var json = (new Function('return'+data)());
			
			if(json[0].param=='n'){
				if(!confirm("아직 회원이 아니시군요? 회원가입하러 가시죠~!")){
					return;
				}else{
					location.href="joinView.do";
				}
			}else{
				if(!confirm("정보가 존재합니다. 로그인하시겠습니까?")){
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
	<p align="center">회원 확인</p>
	<form align="center">
		<div>
			<label>이름</label>
			<input type="text" name="name" id="name" value="${name}">
		</div>
		<div>
			<label>생년월일(6자리)</label>
			<input type="text" name="birth" id="birth" placeholder="예) 990101" value="${birth}">
		</div>
		<div>				
			<input type="button" value="가입 확인하기" onclick="checkMember()">			
		</div>
	</form>
</body>
</html>