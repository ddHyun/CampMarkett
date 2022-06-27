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
			id.focus();
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