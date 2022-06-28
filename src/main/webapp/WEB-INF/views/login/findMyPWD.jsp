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
			<div id="pwdText" style="display:none">
				<label>새로운 비밀번호</label>
				<input type="password" >
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
			if(json[0].param == 'n'){
				alert("일치하는 정보가 없습니다. 다시 시도해 주세요");
				$('#name').val('');
				id.value="";
				email.value="";
				id.focus();
				return;
			}else{				
				document.getElementById('pwdText').style.display = 'block';
				document.getElementById('id').innerHTML = json[0].id;				
			}
		}
	}		
	
</script>
</html>