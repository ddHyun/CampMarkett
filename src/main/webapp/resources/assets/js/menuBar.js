
function goMyBasket(check){
    	 if(check){
    		 alert("로그인이 필요합니다");
    		 return;
    	 }else{
    		 alert("장바구니 페이지로 이동합니다.")
    	 }
    	 location.href="goBasket";
}

window.onload=function(){	
	let loginId = $('#checkLogin').val();
	//비어있는게 true 로그인이 안되어있다. 
	if(loginId=='true'){
		$('#memberMenu').css('display','none');
	}else{
		$('#memberMenu').css('display','block');
	}
}