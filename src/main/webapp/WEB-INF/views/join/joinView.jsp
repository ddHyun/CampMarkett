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
		var idPattern = /^[a-zA-Z]{1}[a-zA-Z0-9]{4,14}$/;
		var id = document.getElementById("id");		
		var idVal = document.getElementById("id").value.trim();		
		if(idVal==''){
			alert("아이디를 입력해주세요");	
			id.focus();
			return;
		}
		if(!idPattern.test(idVal)){
			alert("특수문자를 제외한 5~15자리의 영문자, 숫자만 입력해 주세요");
			id.value = '';
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
		var phonePattern = /^01([0:1:6:7:8:9]?)-([0-9]{3,4})-([0-9]{4})$/;
		var tel = document.getElementById("mobiletel");
		var mobiletel = tel.value.trim();
		
		if(mobiletel == ''){
			alert("전화번호를 입력해 주세요");
			return;
		}
		if(!phonePattern.test(mobiletel)){
			alert("잘못된 형식의 전화번호입니다");
			tel.value='';
			tel.focus();
			return;
		}
	}
		
	
	//가입하기
	function join(f){
		var id = f.id.value;
		var pwd = f.pwd.value;
		var name = f.name.value;
		var genderBox = document.getElementByName("gender");
		var birth = f.birth.value;
		var hometel = f.hometel.value;
		var mobiletel = f.mobiletel.value;
		var addr = f.addr.value;	
		
		if(genderBox.checked==true){
			var gender = genderBox.value;
			console.log(gender);
		}
		
		if(name==''){
			alert("이름을 입력해주세요");
			f.name.focus();
			return;
		}
		
		if(birth==''){
			alert("생년월일을 입력해주세요");
			f.birth.focus();
			return;
		}
		
		if(pwd==''){
			alert("비밀번호를 입력해주세요");
			f.pwd.focus();
			return;
		}
		
		if(email==''){
			alert("이메일을 입력해주세요");
			f.email.focus();
			return;
		}
		
		if(addr==''){
			alert("주소를 입력해주세요");
			f.addr.focus();
			return;
		}
		
		console.log(gender);
	}
	
	
	
	</script>
</head>
<body>
	<p align="center">회원가입</p>
	<form action="join.do" method="post">
		<table border="1" align="center" width="800px">
			<tr>
				<td colspan="2">
				기본정보 입력&nbsp;<span style="color:red">*표시는 필수 입력항목입니다.</span>
				</td>
			</tr>			
			<tr>
				<th><span style="color:red">*</span>아이디</th>
				<td>				
					<input type="text" name="id" id="id">
					<input type="button" value="중복확인" id="idCheckBtn" onclick="checkID()"><br>		
					<span style="color:#787878">5~15자리의 영문자와 숫자만 입력이 가능합니다(시작은 영문자)</span>				
				</td>				
			</tr>
			<tr>
				<th><span style="color:red">*</span>비밀번호</th>
				<td>
				<input type="password" name="pwd" id="password1">
				<span id="pwdErrorMsg" style="color:red">올바른 형식이 아닙니다</span><br>
				<span style="color:#787878">8~15자리의 영문과 숫자를 모두 사용해 입력해야 합니다(특수문자 제외)</span>
				</td>
			</tr>
			<tr>
				<th><span style="color:red">*</span>비밀번호 확인</th>
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
				<th><span style="color:red">*</span>이름</th>
				<td>
					<input type="text" name="name" id="name" value="${name}">
					<!-- 성별 -->
					<input type="checkbox" name="gender" value="남자" onclick="chooseGender(this)" checked="checked">남자
					<input type="checkbox" name="gender" value="여자" onclick="chooseGender(this)">여자&emsp;
					<span id=nameErrorMsg style="color:red">이름은 한글만 입력이 가능합니다</span>
				</td>
			</tr>	
			<tr>
				<th><span style="color:red">*</span>생년월일</th>
				<td>
					<input type="text" id="birth" name="birth" value="${birth}">
					<span style="color:#787878">6자리로 입력해주세요 (예) 990101)</span>
					<span id="birthErrorMsg" style="color:red">올바른 형식이 아닙니다</span>
				</td>
			</tr>		
			<tr>
				<th><span style="color:red">*</span>이메일</th>
				<td>
				<input name="email" id="email">
				<span id="emailErrorMsg" style="color:red">올바른 형식이 아닙니다</span><br>
				<span style="color:#787878">비밀번호 초기화 메일 수신 등에 반드시 필요한 정보이므로 정확히 입력해주세요.</span>
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>
					<input type="text" id="hometel" name="hometel" placeholder="예)032-111-1111">
					<span id="hometelErrorMsg" style="color:red">올바른 형식이 아닙니다</span>
				</td>
			</tr>
			<tr>
				<th><span style="color:red">*</span>휴대전화번호</th>
				<td>
				<input type="text" name="mobiletel" id="mobiletel" placeholder="예) 010-2345-6789">
				<input type="button" value="본인 인증하기" onclick="certifyTel()"><br>
				</td>
			</tr>
			<tr>
				<th><span style="color:red">*</span>주소</th>
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
	var pwdErrorMsg = $('#pwdErrorMsg');
	
	//비밀번호 유효성 체크
	pwdErrorMsg.hide();
	
	pwd1.on('input', function(){
		var pwdVal = $.trim(pwd1.val());
		if(!pwdPattern.test(pwdVal)){
			pwdErrorMsg.show();
			if(pwd1.val()==''){
				pwdErrorMsg.hide();
			}
		}else{//이부분을 적어줘야 올바른 형식일 때 에러메시지 지워짐
			pwdErrorMsg.hide();
		}
	});
	
	
	//비밀번호1, 비밀번호2 일치/불일치
	equalMsg.hide();
	notEqualMsg.hide();
	
	pwd2.on('input', function(){
		var pwd1Val = $.trim(pwd1.val());
		var pwd2Val = $.trim(pwd2.val());
	
		if(pwd1Val==pwd2Val){
			equalMsg.show();
			notEqualMsg.hide();
		}else{
			equalMsg.hide();
			notEqualMsg.show();
			if(pwd2.val()==''){
				notEqualMsg.hide();
				equalMsg.hide();
			}
		}		
	});	
	
	//이메일 유효성 체크
	var emailErrorMsg = $('#emailErrorMsg');
	var email = $('#email');
	var emailPattern =
		 /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	emailErrorMsg.hide();
		 
	email.on('input', function(){
		var emailVal = $.trim(email.val());
		if(!emailPattern.test(emailVal)){
			emailErrorMsg.show();
		}else{
			emailErrorMsg.hide();
		}
	});
	
	//이름 유효성 체크
	var nameErrorMsg = $('#nameErrorMsg');
	var namePattern = /^[가-힣]{2,6}$/;
	
	nameErrorMsg.hide();
	
	$('#name').on('input', function(){
		var nameVal = $.trim($('#name').val());
		if(!namePattern.test(nameVal)){
			nameErrorMsg.show();
			if($('#name').val()==''){
				nameErrorMsg.hide();
			}
		}else{
			nameErrorMsg.hide();
		}
	});
	
	//생년월일 유효성 체크
	var birthErrorMsg = $('#birthErrorMsg');
	var birthPattern = /^[0-9]{6}$/;
	
	birthErrorMsg.hide();
	
	$('#birth').on('input', function(){
		var birthVal = $.trim($('#birth').val());
		if(!birthPattern.test(birthVal)){
			birthErrorMsg.show();
			if($('#birth').val()==''){
			birthErrorMsg.hide();
			}
		}else{
			birthErrorMsg.hide();
		}
	});
	
	//집전화 유효성 체크
	var hometelErrorMsg = $('#hometelErrorMsg');
	var phonePattern = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/;
	var hometel = $('#hometel');
	
	hometelErrorMsg.hide();
	
	hometel.on('input', function(){
		var hometelVal = $.trim(hometel.val());
		if(!phonePattern.test(hometelVal)){
			hometelErrorMsg.show();
			if(hometel.val()==''){
				hometelErrorMsg.hide();
			}
		}else{
			hometelErrorMsg.hide();
		}
	})
	
		

</script>
</html>