<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:::Everyday 캠프마켓:::</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link href="resources/assets/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="resources/assets/css/style.css">
<link rel="stylesheet" href="resources/assets/css/zerogrid.css" type="text/css" media="screen">
<link rel="stylesheet" href="resources/assets/css/responsive.css" type="text/css" media="screen"> 
<link rel="stylesheet" href="resources/assets/css/form.css">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script src="resources/assets/js/jquery.js"></script>
<script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
<script src="resources/assets/js/superfish.js"></script>
<script src="resources/assets/js/jquery.easing.1.3.js"></script>
<script src="resources/assets/js/sForm.js"></script>
<script src="resources/assets/js/forms.js"></script>
<script src="resources/assets/js/css3-mediaqueries.js"></script>
<script src="resources/assets/js/httpRequest.js"></script>
<script src="resources/assets/js/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/c89215f053.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="main">
<!--==============================header=================================-->
 <header> 
  <div class="zerogrid">
    <div class="col-full">
	<div class="wrap-col">
    <h1><a href="index.html"><img src="resources/assets/img/images/logo.png" alt="EXTERIOR"></a> </h1>
    
         <div class="menu_block">
           <nav>
            <ul class="sf-menu">
                   <li><a href="home">Home</a></li>                   
                   <li><a href="marketMain_Temp">밀키트</a></li>
                   <li><a href="reviewMain_Temp">후기</a></li>
                   <li><a href="campingAreaMain_Temp">주변 캠핑장 </a></li>
                   <li class="with_ul current"><a href="memberInfo_Temp">마이페이지</a>
				   	<ul>
                         <li><a href="money.do"> 카드등록/충전</a></li>
                         <li><a href="#">Good rest</a></li>
                         <li><a href="#">Services</a></li>
                         <li><a href="makeSampleId">샘플 로그인!</a></li>
                     </ul>
				   </li>
				   		<li><a href="##############">로그아웃</a></li>					   	
				   				   
                 </ul>
           </nav>
           <div class="clear"></div>
           </div>
           <div class="clear"></div>
		</div>
      </div>
    </div>
</header>
<!--=======content================================-->




<div class="wrapper row3">
  <main class="hoc container clear" style="height: 350px"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <section id="introblocks">
      <ul class="nospace group btmspace-80 elements elements-four">
        <li class="one_quarter">
          <article><a href="#"><i class="fas fa-turkey"></i></a>
            <h6 class="heading_card">카드정보</h6>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="#section2"><i class="fas fa-dover"></i></a>
            <h6 class="heading_card">카드등록</h6>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="#"><i class="fas fa-histrory"></i></a>
            <h6 class="heading_card">충전하기</h6>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="#"><i class="fas fa-hearrtbeat"></i></a>
            <h6 class="heading_card">이용내역</h6>
          </article>
        </li>
      </ul>
    </section>
    <!-- ################################################################################################ -->
   
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<div class="wrapper row2">
  <section id="ctdetails" class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle"  id="section2">
      <p class="nospace font-xs"></p>
      <h6 class="heading font-x2" style="font:40px 'Do Hyeon', sans-serif; 
	font-weight:600; letter-spacing:6px;">카드등록</h6>
    </div>
    <figure class="one_half first">
    <div style="width:87%; margin-left: 35px; margin-bottom:15px; color:#826660;">
    <p class="nospace font-xs" style="line-height: 25px" align="justify">
    CVC 번호란 신용카드 번호와는 별도로 인쇄되어 있는 3자리 또는 4자리 숫자로, 
   	 카드 이용 명세서 등에는 인쇄되지 않습니다. 
    CVC 번호를 입력함으로써 카드를 소지하고 있다는 사실을 확인하고
         제3자에 의한 부정 사용을 방지할 수 있습니다.   
    </p>
    </div>
    <img src="resources/assets/img/images/cvcImg.png" style="margin-left:30px; margin-top: 5px">      
    </figure>
    <article class="one_half">     
    
      <form id="registCardForm">       
       <!-- <fieldset> 
          <legend>카드정보 입력</legend> -->
          <input type="hidden" id="cardId" name="id" value="${sessionScope.loginId}"> 
          <input type="text" onKeyup="moveNumber(this)" id="cardNo" name="cardno" placeholder="카드번호 ('-'제외한 숫자 16자리)" maxlength="16">
          <input type="text" onKeyup="moveNumber(this)" id="validDate" name="validcarddate" placeholder="유효기간   (예) 0524(월/연도))" maxlength="4">
          <input type="password" onKeyup="moveNumber(this)" id="cvcNo" name="cvcno" placeholder="CVC번호 (숫자 3자리)"  maxlength="3"> 
          <input type="password" id="simplePwd1" onKeyup="moveNumber(this)" name="simplepwd" placeholder="결제시 사용할 비밀번호 (숫자 6자리)"  maxlength="6">
          <input type="password" id="simplePwd2" onKeyup="moveNumber(this)" placeholder="결제 비밀번호 재입력"  maxlength="6">
          <input type="button" id="registCardBtn" value="등록하기" style="background-color:#A197BD; cursor:pointer">
       <!-- </fieldset>  -->
      </form>
      
    </article>
    <!-- ################################################################################################ -->
  </section>
</div>








<!--           <button type="submit" id="registCardBtn" value="submit">Submit</button> -->
<div class="content">
  <div class="zerogrid">
  	<div class="row">
  	
  	<!-- 2사분면 -->
  	<div class="col-2-5">
	<div class="wrap-col">
      <div>
			<label for="regist" id="registCard" style="cursor:pointer">카드등록</label>&emsp;&emsp;
			<label>카드정보</label>&emsp;&emsp;
			<label>충전하기</label>&emsp;&emsp;
			<label>이용내역</label>
		</div>
      <h2>카드 등록</h2>
      <form id="form_money">
      <fieldset>
      <label class="name">
      <input type="text" value="카드번호:" >
      <!-- <br class="clear"> -->
      <span class="error error-empty">*This is not a valid name.</span><span class="empty error-empty">*This field is required.</span> </label>
      	<!-- <input type="text" class="moveNumber" id="cardno1" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
		<input type="text" class="moveNumber" id="cardno2" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
		<input type="text" class="moveNumber" id="cardno3" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
		<input type="password" class="moveNumber" id="cardno4" maxlength="4"/>
		<input type="hidden" name="cardno" id="cardno"> -->
      <label class="email">
      <input type="text" value="E-mail:" style="width: 400px;">
      <br class="clear">
      <input type="text" value="E-mail:">
      <br class="clear">
      <input type="text" value="E-mail:">
      <br class="clear">
      <input type="text" value="E-mail:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid email address.</span><span class="empty error-empty">*This field is required.</span> </label>
      <label class="phone">
      <input type="tel" value="Phone:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid phone number.</span><span class="empty error-empty">*This field is required.</span> </label>
      <label class="message">
      <textarea>Message:</textarea>
      <br class="clear">
      <span class="error">*The message is too short.</span> <span class="empty">*This field is required.</span> </label>
      <div class="clear"></div>
      <div class="btns"><a data-type="reset" class="btn">clear</a><a data-type="submit" class="btn">send</a>
      <div class="clear"></div>
      <div class="success_wrapper">
       <div class="success">Contact form submitted!<br>
      <strong>We will be in touch soon.</strong></div></div>
      </div></fieldset></form>
      
      
      
      
      
      
      
      
      <div id="regist" style="display:none">
			<!-- <form id="form" action="" method="POST">
				<div>
					<label>카드번호</label>
					<input type="text" class="moveNumber" id="cardno1" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="text" class="moveNumber" id="cardno2" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="text" class="moveNumber" id="cardno3" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
					<input type="password" class="moveNumber" id="cardno4" maxlength="4"/>
					<input type="hidden" name="cardno" id="cardno">
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
					<div id="infoMsg" style="display:none">				
						<p>
							카드사용등록을 하는 즉시 충전을 할 수 있습니다.<br>
							카드사용등록을 원하시는 카드번호와 다음 항목을 모두 정확히 입력해 주시기 바랍니다. [단, 법인카드제외]<br>
							카드고유확인번호/비밀번호 등록오류 시 발급받은 카드회사에 문의 바랍니다.<br>
						</p>
					</div>
				</div>
				<div>
					<input type="button" value="등록하기" onclick="registCard()">
				</div>
				</form> -->
			</div>
      
      
      
      
      
     
	 </div>
    </div>
  	
    <div class="col-2-5">
		<div class="wrap-col">
           <%--  <h1 style="font-size: 20px">${sessionScope.loginId}님 마이페이지1</h1> --%>
      
            <div class="map">
            
            
		
		<p> 이제 vo 확인 ${vo.name}</p>

		<div>
			<label for="regist" id="registCard" style="cursor:pointer">카드등록</label>&emsp;&emsp;
			<label>카드정보</label>&emsp;&emsp;
			<label>충전하기</label>&emsp;&emsp;
			<label>이용내역</label>
		</div>
		<div><br><br>
			
		</div>
            
            
            <!-- <figure class="img_inner">
                          <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
               </figure>
              <address>
                            <dl>
                                <dt><p>The Company Name Inc.<br>
                                    8901 Marmora Road,<br>
                                    Glasgow, D04 89GR.</p>
                                </dt>
                                <dd><span>Freephone:</span>+1 800 559 6580</dd>
                                <dd><span>Telephone:</span>+1 800 603 6035</dd>
                                <dd><span>FAX:</span>+1 800 889 9898</dd>
                            </dl>
                         </address> -->
 
          </div>
	</div>
    </div>
<!-- 	<div class="col-1-5"><div class="wrap-col">empty</div></div> -->
    <div class="col-2-5">
	<div class="wrap-col">
      <h2>Contact Us</h2>
      <form id="form">
      <div class="success_wrapper">
      <div class="success">Contact form submitted!<br>
      <strong>We will be in touch soon.</strong> </div></div>
      <fieldset>
      <label class="name">
      <input type="text" value="Name:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid name.</span><span class="empty error-empty">*This field is required.</span> </label>
      <label class="email">
      <input type="text" value="E-mail:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid email address.</span><span class="empty error-empty">*This field is required.</span> </label>
      <label class="phone">
      <input type="tel" value="Phone:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid phone number.</span><span class="empty error-empty">*This field is required.</span> </label>
      <label class="message">
      <textarea>Message:</textarea>
      <br class="clear">
      <span class="error">*The message is too short.</span> <span class="empty">*This field is required.</span> </label>
      <div class="clear"></div>
      <div class="btns"><a data-type="reset" class="btn">clear</a><a data-type="submit" class="btn">send</a>
      <div class="clear"></div>
      </div></fieldset></form>
	 </div>
    </div>
    </div>
	
    <div class="row">
    <div class="bottom_block">
      <div class="col-1-2">
        <h3>Follow Us</h3>
        <div class="socials">
          <a href="#"></a>
          <a href="#"></a>
          <a href="#"></a>
        </div>
        <nav><ul>
                   <li><a href="index.html">Home</a></li>
                   <li><a href="index-1.html">About Us</a></li>
                   <li><a href="index-2.html">Menu</a></li>
                   <li><a href="index-3.html">Portfolio</a></li>
                   <li><a href="index-4.html">News </a></li>
                   <li class="current"><a href="index-5.html">Contacts</a></li>
                 </ul></nav>
      </div>
      <div class="col-1-2">
        <h3>Email Updates</h3>
        <p class="col1">Join our digital mailing list and get news<br> deals and be first to know about events</p>
        <form id="newsletter">
                  <div class="success">Your subscribe request has been sent!</div>
                  <label class="email">
                       <input type="email" value="Enter e-mail address" >
                       <a href="#" class="btn" data-type="submit">subscribe</a> 
                        <span class="error">*This is not a valid email address.</span>
                  </label> 
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
     Gourmet © 2013  &nbsp;&nbsp; |&nbsp;&nbsp;   <a href="#">Privacy Policy</a>    &nbsp;&nbsp;|&nbsp;&nbsp;  Designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster</a> - <a href="https://www.zerotheme.com/" title="free website templates">ZEROTHEME</a>
	 	</div>
    </div>
  </div>
</footer>
</body>


<script>
	
	$(function(){
		$('#regist').css('display','block');
		console.log("카드등록페이지 로그인된 아이디: "+$('#cardId').val());
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
	
	//카드등록하기
	$('#registCardBtn').on('click', function(){
		if($('#simplePwd2').val() != $('#simplePwd1').val()){
			alert("비밀번호가 일치하지 않습니다. 다시 입력해 주세요");
			$('#simplePwd2').focus();
			$('#simplePwd2').val('');
			return;
		}
		if($('#cardNo').val()==''){
			alert("카드번호를 입력해 주세요");	
			$('#cardNo').focus();		
			return;
		}
		if($('#validDate').val()==''){
			alert("유효기간을 입력해 주세요");	
			$('#validDate').focus();		
			return;
		}		
		if($('#cvcNo').val()==''){
			alert("CVC번호를 입력해 주세요");	
			$('#cvcNo').focus();
			return;
		}
		if($('#simplePwd1').val()==''){
			alert("비밀번호를 입력해 주세요");	
			$('#simplePwd1').focus();
			return;
		}
	
		$.ajax({
			url: "registCard.do",
			data: 	{id: '${sessionScope.loginId}',
					cardno: $('#cardNo').val(), 
					validcarddate: $('#validDate').val(),
					cvcno: $('#cvcNo').val(),
					simplepwd: $('#simplePwd1').val()},
			datatype: "json",
			type: "post"
		}).done(function(data){
			var json = (new Function('return'+data))();
			if(json[0].param=='y'){
				console.log(json[0].param);
				alert("카드 등록이 완료되었습니다");
				$('#simplePwd2').val('');
				$('#simplePwd1').val('');
				$('#cvcNo').val('');
				$('#validDate').val('');
				$('#cardNo').val('');
			}else{
				alert("카드 등록이 실패했습니다. 관리자에게 문의 바랍니다");
				return;
			}
		}).fail(function(){
			alert("fail");
		})
	})
	
	
	//카드 등록
	/* function registCard() {	
		var cardNo1 = document.getElementById("cardNo1").value;
		var cardNo2 = document.getElementById("cardNo2").value;
		var cardNo3 = document.getElementById("cardNo3").value;
		var cardNo4 = document.getElementById("cardNo4").value;
		var cardno = cardNo1 + cardNo2 + cardNo3 + cardNo4;
		var idx = document.getElementById("idx").value; */
	
		/* var f = document.f;
		f.action = "registCard.do?idx="+idx+"cardno"+cardno;
		f.method = "post";
		f.submit();		 */
	/* } */
</script>
</html>