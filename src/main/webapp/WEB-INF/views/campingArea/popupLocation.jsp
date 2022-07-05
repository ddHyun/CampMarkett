<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cosmo/bootstrap.min.css" integrity="sha384-5QFXyVb+lrCzdN228VS3HmzpiE7ZVwLQtkt+0d9W43LQMzz4HBnnqvVxKg6O+04d" crossorigin="anonymous">
<meta charset="UTF-8">
<title>내 위치 선택하기</title>

</head>

<!-- <body> -->
<body style="background-color: white;">
<button class="btn btn-lg btn-success btn-lg" onclick='closeb()' style="margin:5px;"><strong>지도의 위치로 위치 변경하기</strong></button>
<div style="background-color: #5fa022; padding:10px;  
    margin: 0 auto; margin-top:10px;">
	<div id="map" style="margin:0 auto; width:800px;height:570px;"></div>
</div>



<br> 

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
	
	var mapContainer = document.getElementById('map'); // 지도를 표시할 div
	var centerPosition = new kakao.maps.LatLng(${sessionScope.sessionLat}, ${sessionScope.sessionLon});
    var mapOption = { 
        center: centerPosition, // 지도의 중심좌표
        level: 8 // 지도의 확대 레벨
    };	
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	var imageSrc = 'resources/assets/img/campingArea/redMarker.png',     
	imageSize = new kakao.maps.Size(40, 46), 
	imageOption = {offset: new kakao.maps.Point(17, 46)}; 

	//마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage2 = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
	
	// 지도를 클릭한 위치에 표출할 마커입니다
	var myMarker = new kakao.maps.Marker({ 
	    // 지도 중심좌표에 마커를 생성합니다 
	    position: map.getCenter(),
	    image: markerImage2
	}); 
	// 지도에 마커를 표시합니다
	myMarker.setMap(map);
	
	var markers = [];
	var infoWindows = [];

	
// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다

	var imageSrc = 'resources/assets/img/campingArea/testMarker.png' // 마커이미지의 주소입니다    
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
		
		var infoWindow = new kakao.maps.InfoWindow({
		    position : campPosition, 
		    content : /* '<div>${camp.name}</div>' */
		    	 '<input type="text" style="width:100%;" class="btn btn-success disabled" value='+'${camp.name}'+'>'
		});
		
	//	infoWindow.open(map,marker); 
		infoWindows.push(infoWindow);//close를 위한 배열 필요
		
	</c:forEach>
	 $.each(infoWindows, function(index, info) {
		info.open(map,markers[index]);
	});
	 map.setCenter(centerPosition);
	
//클릭이벤트
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    myMarker.setPosition(latlng);
    /* map.setCenter(latlng); */
    lat = latlng.getLat();
    lon = latlng.getLng();
    
    var nowCenter = map.getCenter();
    /* Ajax 구동  */
    $.ajax({
		url: "movePosition?lat=" + lat + "&lon=" + lon,
		type: "GET",
		success: function(data){
			
			$.each(markers, function(index, mark) {
				mark.setMap(null);
			});
			$.each(infoWindows, function(index, info) {
				info.close();
			});
			
			markers=[];
			infoWindows=[]
			
			$.each(data, function(index, item) {
				
				var marker =new kakao.maps.Marker({
					map : map,
					position : new kakao.maps.LatLng(item.latitude, item.longitude),
					image: markerImage1
					}	
				);
				markers.push(marker);
				
				var infoWindow = new kakao.maps.InfoWindow({
				    position : new kakao.maps.LatLng(item.latitude, item.longitude), 
				    content : /* '<div>' + item.name + '</div>' */ 
				    '<input type="text" style="width:100%;" class="btn btn-success disabled" value=' + item.name + '>'
				});
				infoWindow.open(map,marker);  //close를 위한 배열 필요
				infoWindows.push(infoWindow);
			});
			/* map.setCenter(latlng); */
			map.setCenter(nowCenter);
			
		}
	});
    
    

});
</script>
</body>
</html>