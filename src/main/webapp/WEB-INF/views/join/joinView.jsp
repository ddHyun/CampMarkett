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
	var joinForm = document.form;
	
	function goPopup(){
		var pop = window.open("jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=no"); 		
	}

	function jusoCallBack(roadFullAddr){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		var address = document.querySelector("#address");
		address.value = roadFullAddr;
		document.getElementById("addressBtn").disabled = true;
	}
	
	//비밀번호 일치확인 버튼
	function checkPwd() {
		
		var pwdPattern = /^[A-Za-z0-9]{8,15}$/;
		var pwdId = document.getElementById("password1");
		var pwd2Id = document.getElementById("password2");
		
		var pwd = pwdId.value.trim();
		var pwd2 = pwd2Id.value.trim();
		
		if(pwd==''){
			alert("비밀번호를 입력해 주세요");
			return;
		}

		if(!pwdPattern.test(pwd)){
			alert("비밀번호는 특수문자를 제외한 8~15자리의 영어 대소문자, 숫자로 이루어져야 합니다");
			//input내용 초기화
			pwdId.value="";
			pwd2Id.value="";
			return;
		}
		
		
		if(pwd==pwd2){
			alert("비밀번호가 일치합니다");
			//일치하면 버튼 비활성화
			document.getElementById("checkPwdBtn").disabled = true;
			return;
		}else{
			alert("비밀번호가 일치하지 않습니다");
			pwdId.value="";
			pwd2Id.value="";
			return;
		}		
	}
	
	//아이디 중복버튼 클릭 시 파마리터 가지고 페이지 이동
	function send(){		
		var id = document.getElementById("id").value;		
		if(id==''){
			alert("아이디를 입력해주세요");			
			return;
		}		
		location.href = "checkID.do?id=" + id;
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
		var phoneJ = /^01([0:1:6:7:8:9]?)?([0-9]{3,4})?([0-9]{4})$/;
		var tel = document.getElementById("mobiletel");
		var mobiletel = tel.value.trim();
		if(!phoneJ.test(mobiletel)){
			alert("잘못된 형식의 전화번호입니다");
			return;
		}else if(mobiletel == ''){
			alert("전화번호를 입력해 주세요");
			return;
		}
	}
		
	
	//가입하기
	function join(f){
		var id = f.id.value;
		var pwd = f.pwd.value;
		var mobiletel = f.mobiletel.value;
		var addr = f.addr.value;	
		f.submit();
	}
	
	function checkpwd(){
		var pwdPattern = /^[A-Za-z0-9]{8,15}$/;
		var pwdId = document.getElementById("password1");
		var pwd2Id = document.getElementById("password2");
		
		var pwd = pwdId.value.trim();
		var pwd2 = pwd2Id.value.trim();
		
		if(pwd!=pwd2){
			
		}
	}
	
	</script>
</head>
<body>
	<p align="center">회원가입</p>
	<form action="join.do" method="post">
		<table border="1" align="center" width="800px">
			<tr>
				<td colspan="2">
				기본정보 입력<br>
				*표시는 필수 입력항목입니다.
				</td>
			</tr>			
			<tr>
				<th>*아이디</th>
				<td>				
				<input type="text" name="id" value="${id}" id="id">
				<!-- 아이디 중복확인 버튼 -->
				<input type="button" value="중복확인" id="duplIdBtn" onclick="send()">				
				<c:choose>
					<c:when test="${duplicationID eq 'no'}">
					사용가능한 아이디입니다								
					</c:when>
					<c:when test="${duplicationID eq 'yes'}">
					중복된 아이디입니다
					</c:when>
				</c:choose>
				</td>				
			</tr>
			<tr>
				<th>*비밀번호</th>
				<td><input type="password" name="pwd" id="password1" 
						placeholder="특수문자를 제외한 8~15자리의 영어 대소문자, 숫자"></td>
			</tr>
			<tr>
				<th>*비밀번호 확인</th>
				<td>
				<input type="password" name="pwd2" id="password2">
				<input type="button" value="일치확인" id="checkPwdBtn" onclick="checkPwd()">
				</td>
			</tr>
			<tr>
				<td colspan="2">개인정보 입력</td>
			</tr>
			<tr>
				<th>*이름</th>
				<td>
					<input type="text" name="name">
					<input type="checkbox" name="gender" value="male" onclick="chooseGender(this)" checked="checked">남자
					<input type="checkbox" name="gender" value="female" onclick="chooseGender(this)">여자
				</td>
			</tr>			
			<tr>
				<th>*이메일</th>
				<td>
				<input name="email"><br>
				비밀번호 초기화 메일 수신 등에 반드시 필요한 정보이므로 정확히 입력해주세요.
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="hometel"></td>
			</tr>
			<tr>
				<th>*휴대전화번호</th>
				<td>
				<input type="text" name="mobiletel" id="mobiletel" onfocus='this.placeholder="예) 010-2345-6789'>
				<input type="button" value="본인 인증하기" onclick="certifyTel()"><br>
				</td>
			</tr>
			<tr>
				<th>*주소</th>
				<td>
				<input type="text" id="address" name="addr" style="width:500px;">
				<!-- 주소찾기 버튼 클릭 시  주소API로 이동 -->
				<input type="button" value="주소찾기" id="addressBtn" onclick="goPopup();">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="취소하기" onclick="location.href='##########'">
					<input type="button" value="가입하기" onclick="join(this.form)">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>