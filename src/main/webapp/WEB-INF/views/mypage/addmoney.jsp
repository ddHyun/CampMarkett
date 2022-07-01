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
<link rel="stylesheet" href="resources/assets/css/style.css">
<link rel="stylesheet" href="resources/assets/css/zerogrid.css" type="text/css" media="screen">
<link rel="stylesheet" href="resources/assets/css/responsive.css" type="text/css" media="screen"> 
<link rel="stylesheet" href="resources/assets/css/form.css">
<script src="resources/assets/js/jquery.js"></script>
<script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
<script src="resources/assets/js/superfish.js"></script>
<script src="resources/assets/js/jquery.easing.1.3.js"></script>
<script src="resources/assets/js/sForm.js"></script>
<script src="resources/assets/js/forms.js"></script>
<script src="resources/assets/js/css3-mediaqueries.js"></script>
<script src="resources/assets/resources/assets/js/httpRequest.js"></script>
<script src="resources/assets/resources/assets/js/jquery-3.6.0.min.js"></script>
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

<div class="content">
  <div class="zerogrid">
  	<div class="row">
  	
  	<div class="col-2-5">
	<div class="wrap-col">
      <div class="success_wrapper">
       <div class="success">Contact form submitted!<br>
      <strong>We will be in touch soon.</strong></div></div>
      <h2>카드 등록</h2>
      <form id="form">
      <fieldset>
      <label class="name">
      	<input type="text" class="moveNumber" id="cardno1" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
		<input type="text" class="moveNumber" id="cardno2" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
		<input type="text" class="moveNumber" id="cardno3" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
		<input type="password" class="moveNumber" id="cardno4" maxlength="4"/>
		<input type="hidden" name="cardno" id="cardno">
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
      
      
      
      
      
      
      
      
      <div id="regist" style="display:none">
			<form id="form" action="" method="POST">
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
				</form>
			</div>
      
      
      
      
      
     
	 </div>
    </div>
  	
    <div class="col-2-5">
		<div class="wrap-col">
            <h1 style="font-size: 20px">${sessionScope.loginId}님 마이페이지1</h1>
      
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
	<div class="col-1-5"><div class="wrap-col"><!--empty--></div></div>
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
	$('#infoMsgBtn').on('click', function(){
		if($('#infoMsg').css('display')=='block'){
			$('#infoMsg').css('display', 'none');
		}else{
			$('#infoMsg').css('display', 'block');
		}
	})
	
	
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