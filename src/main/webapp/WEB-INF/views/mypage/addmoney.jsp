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
		<h1>마이페이지1</h1>
		<label></label>
		<div>
			<label for="regist" id="registCard" style="cursor:pointer">카드등록</label>&emsp;&emsp;
			<label>카드정보</label>&emsp;&emsp;
			<label>충전하기</label>&emsp;&emsp;
			<label>이용내역</label>
		</div>
		<div><br><br>
			<div id="regist" style="display:block">
				<input type="hidden" id="idx" value="${param.idx}">
				<div>
					<label>생년월일</label>
					<input type="text" name="birth" placeholder="예) 990101" required>
				</div>
				<div>
					<label>카드번호</label>
					<input type="text" class="moveNumber" id="cardNo1" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="text" class="moveNumber" id="cardNo2" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="text" class="moveNumber" id="cardNo3" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="password" class="moveNumber" id="cardNo4" maxlength="4"/>
				</div>
				<div>
					<label>CVC번호</label>
					<input type="text" name="cvcno" placeholder="숫자  3자리 입력">
				</div>
				<div>
					<label>카드비밀번호</label>
					<input type="text" name="cardPw" placeholder="숫자  4자리 입력">
				</div>
				<div>
					<input type="button" value="등록하기" onclick="registCard()">
					<img src="https://img.icons8.com/external-flaticons-flat-flat-icons/64/000000/external-question-mark-web-flaticons-flat-flat-icons-3.png"/>
				</div>
			</div>
		</div>
	</form>
</body>
<script>
	function showForm(){
		document.getElementById('regist').display = 'block';
	}
	
	//카드번호 자동 커서이동
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
	
	function registCard() {	
		var cardNo1 = document.getElementById("cardNo1").value;
		var cardNo2 = document.getElementById("cardNo2").value;
		var cardNo3 = document.getElementById("cardNo3").value;
		var cardNo4 = document.getElementById("cardNo4").value;
		var cardno = cardNo1 + cardNo2 + cardNo3 + cardNo4;
		var idx = document.getElementById("idx").value;
	
		/* var f = document.f;
		f.action = "registCard.do?idx="+idx+"cardno"+cardno;
		f.method = "post";
		f.submit();		 */
	}
</script>
</html>