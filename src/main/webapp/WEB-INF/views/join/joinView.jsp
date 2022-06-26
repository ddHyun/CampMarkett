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
		
	//아이디 중복버튼 클릭 시 파마리터 가지고 페이지 이동
	function checkID(){
		var idPattern = /^(?=.*[a-zA-Z0-9]).{5,15}$/;
		var id = document.getElementById("id");		
		var idVal = document.getElementById("id").value.trim();		
		if(idVal==''){
			alert("아이디를 입력해주세요");			
			return;
		}
		if(!idPattern.test(idVal)){
			alert("특수문자를 제외한 5~15자리의 영문자, 숫자만 입력해 주세요");
			idVal = '';
			id.focus();
			return;
		}
		console.log(idVal);
		var url = "checkID.do";
		var param = "id=" + idVal;
		
		sendRequest(url, param, cb, "POST");
	}	
	
	function cb(){
		var id = document.getElementById("id");
		if(xhr.readyState==4 && xhr.status==200){
			var data = xhr.responseText;
			var json = (new Function('return'+data))();
			if(json[0].param == 'n'){
				if(!confirm("사용 가능한 아이디입니다. 사용하시겠습니까?")){
					id.focus();
					id.value = '';
					return;
				}else{					
					document.getElementById("idCheckBtn").disabled = true;
					id.disabled = true;
					}
			}else{
					alert("중복된 아이디입니다. 다시 시도해 주세요");
					id.focus();
					id.value = '';
					return;
				}				
		}
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
					<input type="text" name="id" id="id">
					<input type="button" value="중복확인" id="idCheckBtn" onclick="checkID()"><br>		
					<span>5~15자리의 영문자와 숫자만 입력이 가능합니다</span>				
				</td>				
			</tr>
			<tr>
				<th>*비밀번호</th>
				<td>
				<input type="password" name="pwd" id="password1"><br>
				<span>특수문자를 제외한 8~15자리의 영문과 숫자를 입력해야 합니다</span>
				</td>
			</tr>
			<tr>
				<th>*비밀번호 확인</th>
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
				<th>*이름</th>
				<td>
					<input type="text" name="name" value="${name}">
					<input type="checkbox" name="gender" value="male" onclick="chooseGender(this)" checked="checked">남자
					<input type="checkbox" name="gender" value="female" onclick="chooseGender(this)">여자
				</td>
			</tr>	
			<tr>
				<th>생년월일</th>
				<td>
					<input type="text" name="birth" value="${birth}">
					<span>6자리로 입력해주세요 (예) 990101)</span>
				</td>
			</tr>		
			<tr>
				<th>*이메일</th>
				<td>
				<input name="email"><br>
				<span>비밀번호 초기화 메일 수신 등에 반드시 필요한 정보이므로 정확히 입력해주세요.</span>
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
<script>

//페이지 로딩되면 자동커서
	$(function(){
		$('#id').focus();
	});
	
	var pwd1 = $('#password1');
	var pwd2 = $('#password2');
	var pwdPattern = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,15}$/;
	var equalMsg = $('#equalMsg');
	var notEqualMsg = $('#notEqualMsg');
	
	//유효성 체크
	pwd1.change(function(){
		checkPwd(pwd1.val());
	});
	function checkPwd(password){
		if(!pwdPattern.test(password)){
			alert("특수문자를 제외한 8~15자리의 영문, 숫자만 입력이 가능합니다");
			pwd1.focus();
			pwd1.val('');
			return false;
		}
		return true;
	}
	
	equalMsg.hide();
	notEqualMsg.hide();
	
	//비밀번호1, 비밀번호2 일치/불일치
	pwd2.on('input', function(){
		var pwd1Val = $.trim(pwd1.val());
		var pwd2Val = $.trim(pwd2.val());
	
		if(pwd1Val==pwd2Val){
			equalMsg.show();
			notEqualMsg.hide();
		}else{
			equalMsg.hide();
			notEqualMsg.show();
		}		
	});	
</script>
</html>