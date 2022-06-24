<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="checkId2.do" method="post">
		사용할 아이디 : <input type="text" name="id"><br>
		<input type="submit" value="중복확인" onclick="send()">	
	</form>
</body>
</html>