<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/assets/js/httpRequest.js"></script>
<script src="resources/assets/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<form action="loginView.do" method="POST" name="f" align="center">
		<p>비밀번호 찾기</p>
			<div>
				<label>아이디</label>
				<input type="text" name="id" id="id">
			</div>
			<div>
				<label>이름</label>
				<input type="text" name="name" id="name">
			</div>
			<div>
				<label>이메일</label>
				<input type="text" name="email" id="email" placeholder="예)abc@de.com">
			</div>
			<br>
			<div>
				<input type="button" value="비밀번호 찾기" id="PwdFindBtn" onclick="searchPwd()">
			</div>		
			<div id="pwdField" style="display:none">
					<input type="hidden" id="idx">
				<div>
					<label>새로운 비밀번호</label>
					<input type="password" name="pwd" id="pwd1">
				</div>
				<div>
					<label>비밀번호 확인</label>
					<input type="password" name="pwd2" id="pwd2">
				</div>
				<div>
					<!-- <input type="button" value="비밀번호 변경하기" id="changePwdBtn"> -->
					<input type="button" value="비밀번호 변경하기" onclick="changePwd()">
				</div>
				<div id="loginField" style="display:none">
					<input type="button" value="로그인하러 가기" onclick="selfCloseSubmit()">
				</div>
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
	
	//비밀번호 찾기
	function searchPwd(){
		var f = document.f;
		var name = f.name;
		var id = f.id;
		var email = f.email;
		var nameVal = name.value.trim();
		var idVal = id.value.trim();
		var emailVal = email.value.trim();
		
		if(nameVal==''){
			alert("이름을 입력해 주세요");
			name.focus();
			return;
		}
		if(idVal==''){
			alert("아이디를 입력해 주세요");
			id.focus();		
			return;
		}
		if(emailVal==''){
			alert("이메일을 입력해 주세요");
			email.focus();
			return;
		}
		
		var url = "searchPwd.do";
		var param = "name="+nameVal+"&id="+idVal+"&email="+emailVal;
		sendRequest(url, param, cb, "POST");
	}
	
	function cb(){
		if(xhr.readyState==4 && xhr.status==200){
			var data = xhr.responseText;
			var json = (new Function('return'+data))();
			//회원정보가 없다면
			if(json[0].param == '0'){
				alert("일치하는 정보가 없습니다. 다시 시도해 주세요");
				$('#name').val('');
				id.value="";
				email.value="";
				id.focus();
				return;
			}else{//회원정보가 있다면			
				document.getElementById('pwdField').style.display = 'block';
				document.getElementById('idx').value= json[0].param;
				console.log(document.getElementById('idx').value);
			}
		}
	}
	
	//비밀번호 변경하기
	function changePwd() {
		var pwdPattern = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,15}$/;
		var pwd = document.getElementById("pwd1");
		var pwd2 = document.getElementById("pwd2");
		var pwdVal = pwd.value.trim();
		var pwd2Val = pwd2.value.trim();
		
		if(pwdVal==''){
			alert("비밀번호를 입력해 주세요");
			return;
		}
		if(!pwdPattern.test(pwdVal)){//정규표현식 형식과 일치하지 않을 때
			alert("8~15자리의 영문과 숫자를 모두 사용해 입력해야 합니다(특수문자 제외)");
			pwd.value="";
			pwd.focus();
			return;
		}else{//비밀번호 형식 통과 후
			if(pwdVal!=pwd2Val){//비밀번호 불일치시 
				alert("비밀번호가 일치하지 않습니다. 다시 시도해 주세요");
				pwd.value="";
				pwd2.value="";
				pwd.focus();
				return;
			}else{//비밀번호 일치시
				var idx = document.getElementById('idx').value; 
				url = "changePwd.do";
				param = "pwd="+pwdVal+ "&idx="+idx;
				console.log("pwd: "+pwdVal+"/idx: "+idx);
				sendRequest(url, param, cb, "POST");
			}
		}		
	}
	
	/* function cb(){
		if(xhr.readyState==4 && xhr.status==200){
			alert("성공");
		}
	} */
	
</script>
</html>