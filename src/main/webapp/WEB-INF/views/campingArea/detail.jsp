<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑장 상세 정보 ${campInfo.name}</title>
<script src="https://kit.fontawesome.com/980d8558d8.js" crossorigin="anonymous"></script>
</head>
<body>
	<table>
		<tr>
			<td class="td1"><h2>날씨</h2></td>
			<td class="td2"><div id="weather">온도</div></td>
			<!-- <i class="fas fa-sun"></i> -->
			<td class="td3"><div id="weatherIcon">온도</div></td>
		</tr>
	</table>
	<img src="resources/assets/img/campingArea/${campInfo.imgName}" width="100%">
	<table border="1">
		<tr>
			<td>캠핑장 이름</td>
			<td>${campInfo.name}</td>
		</tr>
	</table>

	캠핑장 위치
	<div id="map" style="width:100%;height:400px;"></div>
	
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
					ranking.innerHTML = "온도" + obj.main.temp
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
    level: 3 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(${campInfo.latitude}, ${campInfo.longitude}); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

</script>

</html>