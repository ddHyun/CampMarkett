<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	-> q = ? 장소이름
	https://api.openweathermap.org/data/2.5/weather?q=seoul&appid=69e06beb30084da3eabe041e57096ba5&units=metric&lang=kr
	
	날씨 페이지입니다
	-> location 위도 경도 lat={lat}&lon={lon}
	https://api.openweathermap.org/data/2.5/weather?lat=37.5666805&lon=126.9784147&appid=69e06beb30084da3eabe041e57096ba5&units=metric&lang=kr
	<table>
		<tr>
			<td class="td1"><h2>날씨</h2></td>
			<td class="td2"><div id="weather">온도</div></td>
		</tr>
	</table>
</body>
<script>
	window.onload = function(){
		let ranking = document.getElementById("weather");
		let xhr = new XMLHttpRequest();
		let obj;
		let str;
		let words = new Array();
		/* 내 위치 받아서 우선 뿌려주기 */
		let url = "https://api.openweathermap.org/data/2.5/weather?"
				+ "lat=${lat}&lon=${lon}"
				+ "&appid=69e06beb30084da3eabe041e57096ba5&units=metric&lang=kr";
		xhr.open("GET",url, true);
		xhr.send();
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					obj = JSON.parse(xhr.responseText);
					console.log(obj);
					ranking.innerHTML = "온도" + obj.main.temp
								+"<br>" + obj.weather[0].main +  "   현재 날씨";
								
				}
			}
		}
		
		let i = 0;
		
	}
</script>
</html>