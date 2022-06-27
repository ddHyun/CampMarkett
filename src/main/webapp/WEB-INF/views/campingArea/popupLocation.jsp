<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 위치 선택하기</title>

</head>
<body>
<div id="map" style="width:400px;height:400px;"></div>

<br> 
세션 확인
${sessionScope.sessionLat}
<p><em>지도를 클릭해주세요!</em></p> 
<div id="clickLatlng"></div>
<button onclick='closeb()'>닫기</button>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=981d10b9423551ea1989e7ef7415c980"></script>
<script>
var lat = "${sessionScope.sessionLat}";
var lon = "${sessionScope.sessionLon}";

function closeb(){
	
	opener.parent.location.href="/camp/info?lat="+lat+"&lon="+lon;
	
	window.close();
}

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(${sessionScope.sessionLat}, ${sessionScope.sessionLon}), // 지도의 중심좌표
        level: 6 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 지도를 클릭한 위치에 표출할 마커입니다
var marker = new kakao.maps.Marker({ 
    // 지도 중심좌표에 마커를 생성합니다 
    position: map.getCenter() 
}); 
// 지도에 마커를 표시합니다
marker.setMap(map);

// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다

kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    
    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
    message += '경도는 ' + latlng.getLng() + ' 입니다';
    
    lat = latlng.getLat();
    lon = latlng.getLng();
    
    var resultDiv = document.getElementById('clickLatlng'); 
    resultDiv.innerHTML = message;
    
});
</script>
</body>
</html>