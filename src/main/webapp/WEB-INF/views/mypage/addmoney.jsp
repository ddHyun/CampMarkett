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
	<form align="center">
		<h1>마켓페이</h1>
		<label></label>
		<div>
			<label for="regist" id="registCard">카드등록</label>&emsp;&emsp;
			<label>카드정보</label>&emsp;&emsp;
			<label>충전하기</label>&emsp;&emsp;
			<label>이용내역</label>
		</div>
		<div><br><br>
			<div name="regist" id="regist" style="display:block">
				<form>
					<label>카드번호</label>
					<input type="text" class="moveNumber" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="text" class="moveNumber" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="text" class="moveNumber" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="password" class="moveNumber" maxlength="4"/>
					<button onclick="">등록하기</button>
				</form>
			</div>
		</div>
	</form>
</body>
<script>
	function showForm(){
		document.getElementById('regist').display = 'block';
	}
	
	//카드번호 자동이동
	function moveNumber(num){
		//isFinite():유한한 수 -> true 반환 / 무한한 수 or 문자 -> false 반환
		if(isFinite(num.value)==false){
			alert("숫자만 입력이 가능합니다");
			num.value="";
			return false;
		}		
		
		max = num.getAttribute("maxlength");

		if(num.value.length >= max) {
			num.nextElementSibling.focus();
		}
	}
</script>
</html>