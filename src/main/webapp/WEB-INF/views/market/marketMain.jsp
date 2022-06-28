<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<c:forEach var="product" items="#{productList}">
		<div class="temp" style="border:1px solid black; width:30%"<%--  onclick="popupDetail(${camp.idx})" --%> style="cursor:pointer;">
		<%-- <img src="resources/assets/img/campingArea/${camp.imgName}" height="200px" width="300px"> --%>
		상품이름 : ${product.productId}
		<br>
		상품가격 : ${product.price}
		</div>
		<br>
		<br>
	</c:forEach>
	
</body>
</html>