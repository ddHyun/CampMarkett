<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- 부트스트랩, 제이쿼리 -->
<%-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value="/resources/user/css/bootstrap.min.css"/>">
<script src="http://code.jquery.com/jquery-2.2.3.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="<c:url value="/resources/user/js/bootstrap.min.js"/>"></script> --%>

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

	<table border="1" align="center"  width="700">
		<tr>
			<th><!-- <i class="bi bi-diagram-2-fill"></i> --></th>
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
			<td align="center">${vo.productid}</td> 
			<td align="center">${fn:split(vo.regdate,' ')[0]}</td>
			<td align="center">${vo.readhit}</td>
			<td align="center">${vo.joayo}</td>
		</tr>
		</c:forEach>	
	</table>
	<div class="inform_box" align="center">
			<input type="button" value="리뷰쓰기" onclick="location.href='reviewInform.do'">
	</div>
</body>
</html>