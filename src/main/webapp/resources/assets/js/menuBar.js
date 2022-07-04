
//장바구니 탭 클릭시 로그인 유무에 따른 처리
function goMyBasket(check){
    	 if(check){
    		 alert("로그인이 필요합니다");
    		 return;
    	 }else{
    		 alert("장바구니 페이지로 이동합니다.")
    	 }
    	 location.href="goBasket";
}

//창 로딩될 때 로그인 유무에 따라 마이페이지, 로그인, 로그아웃 탭 display
window.onload=function(){	
	let loginId = $('#checkLogin').val();
	//비어있는게 true 로그인이 안되어있다. 
	if(loginId=='true'){
		$('#memberMenu').css('display','none');
		$('#loginTag').css('display', 'block');
		$('#logoutTag').css('display', 'none');
	}else{
		$('#memberMenu').css('display','block');
		$('#loginTag').css('display', 'none');
		$('#logoutTag').css('display', 'block');
	}
}

