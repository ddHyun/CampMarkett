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
		<h1>${sessionScope.loginId}님 마이페이지1</h1>
		
		<p> 이제 vo 확인 ${vo.name}</p>

		<div>
			<label for="regist" id="registCard" style="cursor:pointer">카드등록</label>&emsp;&emsp;
			<label>카드정보</label>&emsp;&emsp;
			<label>충전하기</label>&emsp;&emsp;
			<label>이용내역</label>
		</div>
		<div><br><br>
			<div id="regist" style="display:none">
			<form id="form" action="" method="POST">
				<div>
					<label>카드번호</label>
					<input type="text" class="moveNumber" id="cardno1" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="text" class="moveNumber" id="cardno2" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="text" class="moveNumber" id="cardno3" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="password" class="moveNumber" id="cardno4" maxlength="4"/>
				</div>
				<div>
					<label>유효기간</label>
					<input type="text" class="carddate" name="carddate1" placeholder="월">&nbsp;&nbsp;/&nbsp;
					<input type="text" class="carddate" name="carddate2" placeholder="년">
				</div>
				<div>
					<label>CVC번호</label>
					<input type="text" name="cardcvc" placeholder="숫자  3자리 입력">
					<img src="resources/assets/img/images/questionmark.png" id="cvcMsgBtn" style="cursor:pointer"/>
					<div id="cvcMsg" style="display:none">
						<p>CVC번호 안내</p>
						<img src="resources/assets/img/images/cvc_sample.png"><br>
						<span>							
							카드 뒷면 서명란에 인쇄된 숫자 중 끝 3자리 또는 카드 앞<br>
							면에 인쇄된 숫자 3자리<br> 
						</span>						
					</div>
				</div>
				<div>
					<label>결제시 사용할 비밀번호</label>
					<input type="text" name="cardpwd" placeholder="숫자  4자리 입력">
					<img src="resources/assets/img/images/questionmark.png" id="pwdMsgBtn" style="cursor:pointer"/>
					<div id="pwdErrorMsg" style="display:none">
						<p>비밀번호 오류안내</p>
						<span>
							카드 비밀번호를 3회 이상 잘못 입력한 경우 안전한 거래를<br>
							위하여 비밀번호 이용이 필요한 모든 거래가 일시적으로 중<br>
							지됩니다. 자세한 사항은 문의게시판을 확인해 주세요.
						</span>						
					</div>
				</div>
				<div>
					<h3>
					꼭! 알아두세요
					<img src="resources/assets/img/images/down_arrow.png" id="infoMsgBtn" style="cursor:pointer">
					</h3>					
					<p>
						카드사용등록을 하는 즉시 충전을 할 수 있습니다.<br>
						카드사용등록을 원하시는 카드번호와 다음 항목을 모두 정확히 입력해 주시기 바랍니다. [단, 법인카드제외]<br>
						카드고유확인번호/비밀번호 등록오류 시 발급받은 카드회사에 문의 바랍니다.<br>
					</p>
				</div>
				<div>
					<input type="button" value="등록하기" onclick="registCard()">
				</div>
				</form>
			</div>
		</div>
</body>
<script>
	
	$(function(){
		$('#regist').css('display','block');
	});
		
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

	//cvc번호 안내
	$('#cvcMsgBtn').on('click', function(){
		if($('#cvcMsg').css('display')=='block'){
			$('#cvcMsg').css('display', 'none');
		}else{
			$('#cvcMsg').css('display', 'block');
		}
	});
	
	//카드비밀번호 안내
	$('#pwdMsgBtn').on('click', function(){
		if($('#pwdErrorMsg').css('display')=='block'){
		$('#pwdErrorMsg').css('display', 'none');
		}else{
		$('#pwdErrorMsg').css('display', 'block');
		}
	});	
	
	//꼭 알아두세요
	$('#infoMsgBtn').on
	
	
	//카드 등록
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