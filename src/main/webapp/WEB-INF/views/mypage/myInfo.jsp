<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:::Everyday 캠프마켓:::</title>
<meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/minty/bootstrap.min.css" 
	integrity="sha384-H4X+4tKc7b8s4GoMrylmy2ssQYpDHoqzPa9aKXbDwPoPUA3Ra8PA5dGzijN+ePnH" crossorigin="anonymous">
     <link rel="icon" href="resources/assets/img/images/favicon.ico">
     <link rel="shortcut icon" href="resources/assets/img/images/favicon.ico" />
     <link rel="stylesheet" href="resources/assets/css/style.css">
     <link rel="stylesheet" href="resources/assets/css/slider.css">
	 <link rel="stylesheet" href="resources/assets/css/zerogrid.css" type="text/css" media="screen">
	<link rel="stylesheet" href="resources/assets/css/responsive.css" type="text/css" media="screen"> 
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lumen/bootstrap.min.css" 
	integrity="sha384-GzaBcW6yPIfhF+6VpKMjxbTx6tvR/yRd/yJub90CqoIn2Tz4rRXlSpTFYMKHCifX" crossorigin="anonymous">
     <script src="resources/assets/js/jquery.js"></script>
     <script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
     <script src="resources/assets/js/superfish.js"></script>
     <script src="resources/assets/js/jquery.easing.1.3.js"></script>
     <script src="resources/assets/js/sForm.js"></script>
     <script src="resources/assets/js/jquery.carouFredSel-6.1.0-packed.js"></script>
     <script src="resources/assets/js/tms-0.4.1.js"></script>
	 <script src="resources/assets/js/css3-mediaqueries.js"></script>
	 <script src="resources/assets/js/menuBar.js"></script>
	 <script src="https://kit.fontawesome.com/d9e2783f4c.js" crossorigin="anonymous"></script>
 	 <script src="resources/assets/js/menuBar.js"></script>
 	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/journal/bootstrap.min.css" 
 	integrity="sha384-QDSPDoVOoSWz2ypaRUidLmLYl4RyoBWI44iA5agn6jHegBxZkNqgm2eHb6yZ5bYs" crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/minty/bootstrap.min.css"
	integrity="sha384-H4X+4tKc7b8s4GoMrylmy2ssQYpDHoqzPa9aKXbDwPoPUA3Ra8PA5dGzijN+ePnH"
	crossorigin="anonymous">
	<style>
	.badge bg-primary{
		margin-top: 25px;
		padding: 4px;
		cursor: pointer;
	}
	</style>
	<script>
      $(window).load(function(){
      $('.slider')._TMS({
              show:0,
              pauseOnHover:false,
              prevBu:'.prev',
              nextBu:'.next',
              playBu:false,
              duration:600,
              preset:'fade', 
              pagination:true,//'.pagination',true,'<ul></ul>'
              pagNums:false,
              slideshow:4000,
              numStatus:false,
              banners:false,
          waitBannerAnimation:false,
        progressBar:false
      })  
      });
      
     $(window).load (
    function(){$('.carousel1').carouFredSel({auto: false,prev: '.prev',next: '.next', width: 960, items: {
      visible : {min: 1,
       max: 4
},
height: 'auto',
 width: 240,

    }, responsive: false, 
    
    scroll: 1, 
    
    mousewheel: false,
    
    swipe: {onMouse: false, onTouch: false}});
    
    
    });      

     </script>
</head>
<body style="background-color: #5fa022;">
	<div class="main">
		<!--==============================header=================================-->
		<header>
			<div class="zerogrid">
				<div class="col-full">
					<div class="wrap-col">
						<h1>
							<a href="home"><img
								src="resources/assets/img/images/logo.png" alt="EXTERIOR"></a>
						</h1>

						<div class="menu_block">
						<nav>
						<input type="hidden" id=checkLogin value=${empty sessionScope.loginId}>
            		<ul class="sf-menu">
                   <li><a href="home">Home</a></li>
                   
                   <li><a href="marketMain_Temp">밀키트</a></li>
                   <li><a href="reviewMain_Temp">상품후기</a></li>
                   <li><a href="campingAreaMain_Temp">주변캠핑장 </a></li>
                   <li class="with_ul" id="memberMenu"><a href="#">마이페이지</a>
				   <ul>
                         <li><a href="myInfo.do">내정보수정</a></li>
                         <li><a href="money.do">카드등록</a></li>
                         <li><a href="money.do">카드충전</a></li>
                         <li><a href="#"
                         	onclick="goMyBasket(${sessionScope.loginId eq null})">
                         	장바구니</a></li>
                   </ul>
				   </li>
                   <li id="loginTag"><a href="login_Temp">로그인</a></li>
                   <li id="logoutTag"><a href="logout">로그아웃</a></li>
                 </ul>
           </nav>					
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</header>
		<!-- =============================content================================ -->
<div class="content page1">
<h2 style="text-align:center; font-size:35px">회원정보 수정하기</h2>
			<div class="zerogrid" style="width: 62%">

				<div class="row">
					<div class="col-full">
						<div class="wrap-col">
							<div class="car_wrap" style="margin: 20px auto">
								<form>
  <fieldset>
    <div class="form-group row">
      <label for="name" class="col-sm-2 col-form-label">이름</label>
      <div class="col-sm-10">
        <input type="text" readonly="" class="form-control-plaintext" id="name" value="${vo.name}">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPwd" class="form-label mt-4">비밀번호</label>&emsp;
      <span class="badge bg-primary" style="margin-top: 25px;padding: 6px;cursor: pointer;"
      		id="pwdShowBtn">비밀번호 변경을 원하면 이곳을 눌러주세요.</span>
      <div id="pwdTag">
      <input type="password" class="form-control" id="inputPwd" aria-describedby="emailHelp" placeholder="특수문자를 제외한 8~15자리의 새 비밀번호를 입력해주세요">
      <input type="password" class="form-control" id="inputPwd1" aria-describedby="emailHelp" placeholder="새로운 비밀번호를 다시 한 번 더 입력해주세요">
      </div>
		<span class="badge bg-primary" style="margin-top: 3px; height:25px;cursor: pointer; line-height:25px;"
		id="pwdChangeBtn">비밀번호 변경하기</span>
    </div>
    <div class="form-group row">
      <label for="gender" class="col-sm-2 col-form-label">성별</label>
      <div class="col-sm-10">
        <input type="text" readonly="" class="form-control-plaintext" id="gender" value="${vo.gender}">
      </div>
    </div>
    <div class="form-group">
      <label for="inputEmail" class="form-label mt-4">이메일</label>
    <span class="badge bg-primary" style="margin-top: 25px;padding: 6px;cursor: pointer;"
      		id="emailAbleBtn">이메일 변경을 원하면 이곳을 눌러주세요.</span>
      <input type="email" class="form-control" id="inputEmail" aria-describedby="emailHelp" value="${vo.email}" disabled>
      </div>
		<span class="badge bg-primary" style="margin-top: 3px; height:25px;cursor: pointer; line-height:25px;"
		id="emailChangeBtn">이메일 변경하기</span>
		    <div class="form-group">
      <label for="inputMobileTel" class="form-label mt-4">휴대전화</label>
    <span class="badge bg-primary" style="margin-top: 25px;padding: 6px;cursor: pointer;"
      		id="mobileTelAbleBtn">전화번호 변경을 원하면 이곳을 눌러주세요.</span>
      <input type="text" class="form-control" id="inputMobileTel" aria-describedby="emailHelp" value="${vo.mobiletel}" disabled>
      </div>
		<span class="badge bg-primary" style="margin-top: 3px; height:25px;cursor: pointer; line-height:25px;"
		id="mobileTelChangeBtn">휴대전화 변경하기</span>
		<div class="form-group">
      <label for="inputAddr" class="form-label mt-4">주소</label>
    <span class="badge bg-primary" style="margin-top: 25px;padding: 6px;cursor: pointer;"
      		id="addrAbleBtn" onclick="goPopup()">주소 변경을 원하면 이곳을 눌러주세요.</span>
      <input type="text" class="form-control" id="inputAddr" aria-describedby="emailHelp" value="${vo.addr}" disabled>
      </div>
		<span class="badge bg-primary" style="margin-top: 3px; height:25px;cursor: pointer; line-height:25px;"
		id="addrChangeBtn">주소 변경하기</span>
		 <div class="form-group row">
      <label for="totalmoney" class="col-sm-2 col-form-label">현재 충전금액</label>
      <span class="badge bg-primary" style="cursor: pointer; width:150px; height: 25px; margin-top:10px;
      line-height: 20px" onclick="location.href='money.do'">충전하러 가기</span>
      <div class="col-sm-10">
        <input type="text" readonly="" class="form-control-plaintext" style="color:red"
        id="totalmoney" value="${totalmoney}">
      </div>

							</div>
  </fieldset>
</form>

    </div>
    </div>
    </div>

								



						</div>
					</div>
				</div>

		<!--==============================footer=================================-->
<footer>    
  <div class="zerogrid">
    <div class="col-full">
		<div class="wrap-col">
     koreaIt ② academy  &nbsp;&nbsp; |&nbsp;&nbsp;   <a href="#">Privacy Policy</a>    &nbsp;&nbsp;|&nbsp;&nbsp;  Designed by <a href="https://github.com/SpringProjectKoreaIT/CampMarkett" rel="nofollow">CampMarketTeam</a> - <a href="https://github.com/SpringProjectKoreaIT/CampMarkett" title="free website templates">Group '2' </a>
	 	</div>
    </div>
  </div>
</footer>
</div>
</body>
<script>
	$(document).ready(function(){
			$('#pwdTag').css('display', 'none');	
			$('#pwdChangeBtn').css('display', 'none');
			$('#emailChangeBtn').hide();
			$('#mobileTelChangeBtn').hide();
			$('#addrChangeBtn').hide();
	})
	
	//비밀번호 변경 신청
	$('#pwdShowBtn').on('click', function(){
		$('#pwdTag').css('display', 'block');
		/* $(this).css('display', 'none'); */
		$(this).hide();
		$('#pwdChangeBtn').css('display', 'block');
	})
	
	//비밀번호 변경하기
	$('#pwdChangeBtn').on('click', function(){
		let inputPwd = $('#inputPwd');
		let inputPwdVal = $('#inputPwd').val();
		let inputPwd1 = $('#inputPwd1');
		let inputPwd1Val = $('#inputPwd1').val();
		var pwdPattern = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,15}$/;
		if(inputPwdVal==''){
			alert("비밀번호를 입력해 주세요");
			return;
		}
		if(!pwdPattern.test(inputPwdVal)){
			alert("비밀번호는 특수문자를 제외한 8-15자리로 입력해주세요");
			inputPwd.val('');
			return;
		}
		if(inputPwd1Val==''||inputPwd1Val!=inputPwdVal){
			alert("비밀번호가 일치하지 않습니다. 다시 시도해 주세요");
			inputPwd.val('');
			inputPwd1.val('');
			return;
		}
		$.ajax({
			url: "changePwd.do",
			data: {idx:'${sessionScope.loginIdx}',
					pwd:inputPwdVal},
			datatype: "json",
			async: false,
			type: "post"
		}).done(function(data){
			let result = (new Function('return'+data))();
			if(result[0].param == 'y'){
				alert("비밀번호가 정상적으로 변경되었습니다");
				inputPwd.attr('disabled', true);
				inputPwd1.attr('disabled', true);
			}else{
				alert("비밀번호가 변경되지 못했습니다. 다시 시도해 주세요");
			}
		}).fail(function(){
			alert("관리자에게 문의하세요");
			return;
		})
	})
	
	//이메일 변경 신청
	$('#emailAbleBtn').on('click', function(){		
		$('#inputEmail').attr('disabled', false);
		$(this).hide();
		$('#emailChangeBtn').show();
		$('#inputEmail').val('');
		$('#inputEmail').attr('placeholder', '예) abc@def.com');
	})
	
	//이메일 변경하기
	$('#emailChangeBtn').on('click', function(){
		let inputEmail = $('#inputEmail');
		let inputEmailVal = inputEmail.val();
		var emailPattern =
			 /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if(inputEmailVal==''){
			alert("이메일을 입력해주세요");
			return;
		}
		if(!emailPattern.test(inputEmailVal)){
			alert("이메일 형식이 올바르지 않습니다. 다시 시도해 주세요");
			inputEmail.val('');
			return;
		}
		if(inputEmailVal=='${vo.email}'){
			alert("이메일 주소가 기존과 동일합니다. 다른 이메일을 입력해주세요");
			inputEmail.val('');
			return;
		}
		
		$.ajax({
			url: 'changeEmail.do',
			data: {id:'${vo.id}',
					email: '${vo.email}'},
			datatype: "json",
			async: false,
			type: "post"
		}).done(function(data){
			let json = (new Function('return'+data))();
			if(json[0].param=='y'){
				alert("이메일이 정상적으로 변경되었습니다");
				let newEmail = json[1].email;			
				inputEmail.attr('disabled', true);
			}
		}).fail(function(){
			alert("관리자에게 문의하세요");
			return;
		})		
	})
	
	//전화번호 변경 요청시
	$('#mobileTelAbleBtn').on('click', function(){		
		$('#inputMobileTel').attr('disabled', false);
		$(this).hide();
		$('#mobileTelChangeBtn').show();
		$('#inputMobileTel').val('');
		$('#inputMobileTel').attr('placeholder', '예) 010-2345-6789');
		
	})
	
	//전화번호 변경하기
	$('#mobileTelAbleBtn').on('click', function(){
		let inputMobileTel = $('#inputMobileTel');
		let inputMobileTelVal = $('#inputMobileTel').val();
		var phonePattern = /^01([0:1:6:7:8:9]?)-([0-9]{3,4})-([0-9]{4})$/;
		
		if(inputMobileTelVal==''){
			alert("휴대전화번호를 입력해주세요");
			return;
		}
		if(!phonePattern.test(inputMobileTelVal)){
			alert("휴대전화 형식이 올바르지 않습니다. 다시 시도해 주세요");
			return;
		}
		if(inputMobileTelVal=='${vo.mobiletel}'){
			alert("휴대전화번호가 기존과 동일합니다. 다른 전화번호를 입력해주세요");
			return;
		}
		
		$.ajax({
			url: 'changeMobileTel.do',
			data: {id:'${vo.id}',
					mobiletel:iniputMobileTelVal},
			datatype: "json",
			async: false,
			type: "post"
		}).done(function(data){
			let json = (new Function('return'+data))();
			if(json[0].param=='y'){
				alert("휴대전화번호가 정상적으로 변경되었습니다.");
				inputMobileTel.attr('disabled', true);				
			}else{
				alert("관리자에게 문의하세요");
				return;
			}
		})
	})
			
	//주소찾기 API
	function goPopup(){
		var pop = window.open("jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=no"); 	
		$('#addrAbleBtn').hide();
		$('#addrChangeBtn').show();
	}
	//주소찾기 API cb
	function jusoCallBack(roadFullAddr){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		var address = document.querySelector("#inputAddr");
		address.value = roadFullAddr;
		$('#inputAddr').attr('disabled', true);
	}		
			
		
		
		

</script>
</html>