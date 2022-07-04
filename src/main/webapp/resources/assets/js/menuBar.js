
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
	
	document.getElementById("menuLi").style.display='none';
	
}