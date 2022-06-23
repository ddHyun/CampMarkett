<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function goPopup(){
		var pop = window.open("joinView/jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 		
	}

	function jusoCallBack(roadFullAddr){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.querySelector("#addr");
	}
	
	//비밀번호 일치확인 버튼
	function checkPwd() {
		var pwd  = document.getElementById("password1").value.trim();
		var pwd2  = document.getElementById("password2").value.trim();
		
		if(pwd==''){
			alert("비밀번호를 입력해 주세요");
			return;
		}
		
		if(pwd==pwd2){
			alert("비밀번호가 일치합니다");
			//일치하면 버튼 비활성화
			document.getElementById("checkPwdBtn").disabled = true;
			return;
		}else{
			alert("비밀번호가 일치하지 않습니다");
			return;
		}
		
		//유효성 체크
	}
</script>
</head>
<body>
	<form action="">
		<table border="1" align="center" width="800px">
			<tr>
				<td colspan="2">
				기본정보 입력<br>
				*표시는 필수 입력항목입니다.
				</td>
			</tr>			
			<tr>
				<th>아이디</th>
				<td>
				<input name="id">
				<input type="button" value="중복확인" onclick="">
				</td>				
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd" id="password1"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td>
				<input type="password" name="pwd2" id="password2">
				<input type="button" value="일치확인" id="checkPwdBtn" onclick="checkPwd()">
				</td>
			</tr>
			<tr>
				<td colspan="2">개인정보 입력</td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input name="name"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
				<input name="email">&nbsp;
				<input type="checkbox" value="emailAgreeBox">이메일 수신 동의<br>
				수신거부시 일부 서비스에 제한이 있을 수 있습니다.<br>
				비밀번호 초기화 메일 수신 등에 반드시 필요한 정보이므로 정확히 입력해주세요.
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input name="hometel"></td>
			</tr>
			<tr>
				<th>휴대전화번호</th>
				<td>
				<input name="mobiletel">
				<input type="button" value="본인 인증하기" onclick=""><br>
				<input type="checkbox" value="smsAgreeBox">SMS 수신 동의<br>
				수신거부시 일부 서비스에 제한이 있을 수 있습니다.
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
				<textarea name="addr" rows="2" cols="50" style="resize:none"></textarea>
				<!-- 주소찾기 버튼 클릭 시  주소API로 이동 -->
				<input type="button" value="주소찾기" onclick="goPopup();">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="취소하기" onclick="">
					<input type="button" value="가입하기" onclick="">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>