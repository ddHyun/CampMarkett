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
<div id="map" style="width:700px;height:700px;"></div>

<br> 
<div id="clickLatlng"></div>
<button onclick='closeb()'>위치 결정</button>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=981d10b9423551ea1989e7ef7415c980"></script>
<script src="resources/assets/js/jquery.js"></script>
<script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
<script>
	var lat = "${sessionScope.sessionLat}";
	var lon = "${sessionScope.sessionLon}";

	function closeb(){
		
		opener.parent.location.href="campingAreaMain_Temp?lat="+lat+"&lon="+lon;
		
		window.close();
	}
	
	var mapContainer = document.getElementById('map') // 지도를 표시할 div 
	var mapOption = { 
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
	
	var markers = [];

	
// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다

	var imageSrc = 'resources/assets/img/campingArea/tentMarker.png' // 마커이미지의 주소입니다    
	var imageSize = new kakao.maps.Size(40, 46) // 마커이미지의 크기입니다
	var imageOption = {offset: new kakao.maps.Point(17, 46)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	var markerImage1 = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
	
	<c:forEach var="camp" items="${camplist}">
	var campPosition = new kakao.maps.LatLng(${camp.latitude}, ${camp.longitude});
	var marker =new kakao.maps.Marker({
		map : map,
		position : campPosition,
		image: markerImage1
		}	
	);
	markers.push(marker);
	var infowindow = new kakao.maps.InfoWindow({
	    position : campPosition, 
	    content : '<div>${camp.name}</div>'
	});
	infowindow.open(map,marker);  //close를 위한 배열 필요
	</c:forEach>
	/* $.each(markers, function(index, mark) {
		mark.setMap(map);
	}); */
	
//클릭이벤트
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    
    lat = latlng.getLat();
    lon = latlng.getLng();
    
    /* Ajax 구동  */
    $.ajax({
		url: "movePosition?lat=" + lat + "&lon=" + lon,
		type: "GET",
		success: function(data){
			
			$.each(markers, function(index, mark) {
				mark.setMap(null);
			});
		    
			markers=[];
			
			$.each(data, function(index, item) {
				
				console.log(item.name);
				markers.push(new kakao.maps.Marker({
					position : new kakao.maps.LatLng(item.latitude, item.longitude),
					image: markerImage1
					}	
				));
			});
			
			$.each(markers, function(index, mark) {
				mark.setMap(map);
			});
		}
	});
    

});
</script>
</body>
</html>