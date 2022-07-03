<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑장 상세 정보 ${campInfo.name}</title>
<script src="https://kit.fontawesome.com/980d8558d8.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/yeti/bootstrap.min.css" integrity="sha384-mLBxp+1RMvmQmXOjBzRjqqr0dP9VHU2tb3FK6VB0fJN/AOu7/y+CAeYeWJZ4b3ii" crossorigin="anonymous">
</head>
<body>

	<div style="width:620px; margin-left:15px">
	
	<div style="width:600px; margin-top: 10px">
	<h3 style="color:black"><strong>${campInfo.name}</strong></h3></td>
	<table style="float:right; font-size: 1.2rem">
		<tr>
			<td class="td2"><div id="weather">온도</div></td>
			<!-- <i class="fas fa-sun"></i> -->
			<td class="td3"><div id="weatherIcon"></div></td>
		</tr>
	</table>
	</div>
	
	<div style="border:2px solid #5fa022; width:600px;">
	<img src="resources/assets/img/campingArea/${campInfo.imgName}" width="100%">
	</div>
	<div>
	<div class="card border-success mb-3" style="margin:10px 10px 10px 0px;width: 600px;">
	  <div class="card-header">
	  <h4>주소 : ${campInfo.address}</h4>
	  <h5>예약문의 : ${campInfo.tell}</h5>
	  </div>
	  <div class="card-body">
	    <h4 class="card-title">근교에 차분한 쉼터</h4>
	    <p class="card-text">다른 말로 쓰면 야영지. 캠핑을 하기 위한 장소. 이론적으로는 그냥 캠핑을 하기로 마음 먹은 장소면 그게 어디건 캠핑장이 될 수 있지만, 실제로는 캠핑을 목적으로 주변 환경을 정리한 장소를 가리킨다. 국가에 따라서는 지정된 캠핑장 이외의 지역에서 캠핑을 허가하지 않는 경우도 있으며, 그 이외 지역에서의 캠핑을 허락한다고 해도 제한을 두는 경우가 많다. 보통 캠핑장이라 하면 방문하는 캠퍼들의 편의를 위한 최소한의 시설(정리된 구획, 주차시설, 상하수도 시설)을 갖춘다.</p>
	  </div>
	</div>
	</div>
	
	찾아오시는길
	<div id="map" style="border:2px solid #5fa022; width:600px;height:400px;"></div>
	
	</div>
</body>

<script>
	window.onload = function(){
		let ranking = document.getElementById("weather");
		let nowWeatherIcon = document.getElementById("weatherIcon");
		let xhr = new XMLHttpRequest();
		let obj;
		let str;
		let weatherIcon = {
		        '01' : 'fas fa-sun',
		        '02' : 'fas fa-cloud-sun',
		        '03' : 'fas fa-cloud',
		        '04' : 'fas fa-cloud-meatball',
		        '09' : 'fas fa-cloud-sun-rain',
		        '10' : 'fas fa-cloud-showers-heavy',
		        '11' : 'fas fa-poo-storm',
		        '13' : 'far fa-snowflake',
		        '50' : 'fas fa-smog'
		      };
		let words = new Array();
		/* 내 위치 받아서 우선 뿌려주기 */
		let icon;
		let url = "https://api.openweathermap.org/data/2.5/weather?"
				+ "lat=${campInfo.latitude}&lon=${campInfo.longitude}"
				+ "&appid=69e06beb30084da3eabe041e57096ba5&units=metric&lang=kr";
		xhr.open("GET",url, true);
		xhr.send();
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					obj = JSON.parse(xhr.responseText);
					console.log(obj);
					ranking.innerHTML = "온도 : " + obj.main.temp
								+"<br>" +  "   현재 날씨    " + obj.weather[0].main;
					icon = obj.weather[0].icon.substr(0,2);
					nowWeatherIcon.innerHTML = '<i class="' + weatherIcon[icon] +'"/>';
				}
			}
		}
		
		let i = 0;
	}
</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=981d10b9423551ea1989e7ef7415c980"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(${campInfo.latitude}, ${campInfo.longitude}), // 지도의 중심좌표
    level: 8 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
/* 
//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(${campInfo.latitude}, ${campInfo.longitude}); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map); */

var imageSrc = 'resources/assets/img/campingArea/testMarker.png', // 마커이미지의 주소입니다    
imageSize = new kakao.maps.Size(40, 46), // 마커이미지의 크기입니다
imageOption = {offset: new kakao.maps.Point(17, 46)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

//마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
var markerImage1 = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
markerPosition = new kakao.maps.LatLng(${campInfo.latitude}, ${campInfo.longitude}); // 마커가 표시될 위치입니다

//마커를 생성합니다
var marker1 = new kakao.maps.Marker({
position: markerPosition,
image: markerImage1 // 마커이미지 설정 
});

//마커가 지도 위에 표시되도록 설정합니다
marker1.setMap(map);  




var imageSrc = 'resources/assets/img/campingArea/redMarker.png',     
imageSize = new kakao.maps.Size(40, 46), 
imageOption = {offset: new kakao.maps.Point(17, 46)}; 

//마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
var markerImage2 = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
markerPosition = new kakao.maps.LatLng(${sessionScope.sessionLat}, ${sessionScope.sessionLon}); // 마커가 표시될 위치입니다

//나의 위치 마커를 생성합니다
var marker2 = new kakao.maps.Marker({
position: markerPosition,
image: markerImage2 // 마커이미지 설정 
});

//마커가 지도 위에 표시되도록 설정합니다
marker2.setMap(map);  

</script>

</html>