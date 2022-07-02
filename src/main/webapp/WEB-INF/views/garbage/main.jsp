<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 사용하지 않습니다. -->
<title>주변 캠핑장</title>
</head>
<body>
	<button onclick="popupLocation()">위치 설정</button>
	
	<c:forEach var="camp" items="#{camplist}">
		<div class="temp" onclick="popupDetail(${camp.idx})" style="cursor:pointer;">
		<img src="resources/assets/img/campingArea/${camp.imgName}" height="200px" width="300px">
		캠핑장 이름 : ${camp.name}  거리는 ${camp.distance}km 입니다.
		</div>
		<br>
	</c:forEach>
	
	<!-- 페이징 처리 -->
	페이지 버튼 
	<c:forEach var="i" begin="1" end="${maxPage}">
			<c:choose>
				<c:when test="${i eq nowPage}">
					<c:out value="[${i}]"/>&nbsp;
				</c:when>
				<c:otherwise>
					<a href="/camp/info?page=${i}"><c:out value="${i}"/></a>
				</c:otherwise>
			</c:choose>
	</c:forEach>
</body>





<script>
	
	var windowX = window.screen.width;
	var windowY = window.screen.height;
	
	//상세보기 페이지 띄우기
	function popupDetail(idx){
		var popUpWidth = windowX / 3 ;
		var popUpheight = (windowY * 3 ) / 4 ;
		var top =  ((windowY / 2) - (popUpheight / 2));
		var left = ((windowX / 2) - (popUpWidth / 2));
	
		
		
	/* 	var pop = window.open("/camp/campDetail?idx="+e,"pop","width=650,height=800, scrollbars=yes, resizable=no");  */
		var pop = window.open(
				"/camp/campDetail?idx="+idx,
						"pop",
						"width=" + popUpWidth 
						+ ", height = " + popUpheight 
						+ ", top = " + top
						+ ", left = " + left
						+ " ,scrollbars=yes, resizable=no"); 	
		
	}
	
	//위치설정 페이지 띄우기
	function popupLocation(){
		var popUpWidth = windowX / 2 ;
		var popUpheight = (windowY * 2) / 3 ;
		var top =  ((windowY / 2) - (popUpheight / 2));
		var left = ((windowX / 2) - (popUpWidth / 2));
	
		var pop = window.open(
					"/camp/makeLocation",
					"pop",
					"width=" + popUpWidth 
					+ ", height = " + popUpheight 
					+ ", top = " + top
					+ ", left = " + left
						+ " ,scrollbars=yes, resizable=no"); 	
		
	}	
	

	
	
</script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
</html>