<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>	
		
	function checkMember(f){
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
				
		f.submit();
	}
</script>
</head>
<body>
	<form action="memberOrNot.do" method="post" align="center">
		<div>
			<label>이름</label>
			<input type="text" name="name" id="name" value="${name}">
		</div>
		<div>
			<label>생년월일(6자리)</label>
			<input type="text" name="birth" id="birth" placeholder="예) 990101" value="${birth}">
		</div>
		<div>			
			<c:choose>
				<c:when test="${result eq '2'}">
					<input type="button" value="로그인하러 가기" onclick="---로그인페이지로 이동---">
				</c:when>
				<c:when test="${result eq '1' or result eq '0'}">
					<input type="button" value="가입하러 가기" onclick="location.href='joinView.do'">
				</c:when>
				<c:otherwise>
					<input type="button" value="가입 확인하기" onclick="checkMember(this.form)">
				</c:otherwise>
			</c:choose>
		</div>
	</form>
</body>
</html>