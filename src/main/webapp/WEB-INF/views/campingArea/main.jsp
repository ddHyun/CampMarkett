<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주변 캠핑장</title>
</head>
<body>
	<button>위치 설정</button>
	<table>
		<tr>
			<td class="td1"><h2>날씨</h2></td>
			<td class="td2"><div id="weather">온도</div></td>
		</tr>
	</table>
	<c:forEach var="camp" items="#{camplist}">
		<p>캠핑장 이름 : ${camp.name} 거리는 ${camp.distance}km 입니다.</p>
		<br>
	</c:forEach>
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