<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/bootstrap.origin.min.css" rel="stylesheet" />
<style>
	body{
		background-color:black;
	}

	table{
		background-color:white;
	}
	
	a{
	text-decoration:none;
	font-weight: bold;
	}
	
	
</style>
</head>
<body>

	<div id="board">
	<table border="1" align="center"  width="700">
		<tr>
			<th><i class="bi bi-diagram-2-fill"></i></th>
			<th width="250">제목</th>
			<th width="100">후기상품</th>
			<th width="150">작성자</th>
			<th width="100">작성일</th>
			<th width="60">조회수</th>
			<th width="60">추천수</th>
		</tr>
		
		<c:forEach var="vo" items="${list}">
		<tr>
			<td align="center">${vo.idx}</td> <!-- 글 번호 -->
			
			<td align="center">
				<a href="reviewRead.do?idx=${vo.idx}">
				<font color="black">${vo.title}</font>  <!-- 글 제목  -->
				</a>
			</td>
			<td align="center">${vo.productid}</td> <!-- onclick 기능으로 해당제품으로 연결되는 기능 상의후 추가(내부에 넣을지 외부에 넣을지) -->
			<td align="center">${vo.memberid}</td>
			<td align="center">${fn:split(vo.regdate,' ')[0]}</td>
			<td align="center">${vo.readhit}</td>
			<td align="center">${vo.joayo}</td>
		</tr>
		</c:forEach>
		
	</table>
	</div>
</body>
</html>