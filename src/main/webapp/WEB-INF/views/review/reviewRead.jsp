<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>제목</th>
				<td>${vo.title}</td>
		</tr>
		
		<tr>
			<th>후기상품</th>
				<td>${vo.productid }</td>
		</tr>
		
		<tr>
			<th>내용</th>
				<td>${vo.content}</td>
		</tr>
		
		
		<tr>
			<th></th>
				<td>${vo.filename}</td>
		</tr>
		
		<tr>
			<th>작성일</th>
				<td>${fn:split(vo.regdate,' ')[0]}</td>
		</tr>
		
		<tr colspan="2">
			<td>${vo.readhit}</td>
			<td>${vo.joayo}</td>	
		</tr>
	</table>
</body>
</html>