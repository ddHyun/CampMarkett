<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
	
		function update(f){
		
		f.action = "reviewUpdate.do";
		f.method = "POST";
		f.submit();
		
	}

	</script>
</head>
<body>
	<form>
		<input type="hidden" name="idx" value="${vo.idx}">
		<table border="1" align="center">
		
			<tr>
				<th>작성자</th>
				<td><input name="memberid">${vo.memberid}</td>
			</tr>
			
			<tr>
				<th>상품명</th>
				<td><input name="productid">${vo.productid}</td>
			</tr>
			
			<tr>
				<th>제목</th>
				<td><input name="title">${vo.title}</td>
			</tr>
					
			<tr>
				<th>내용</th>
				<td><textarea row="5" cols="50" name="content" style="resize:none;" wrap="on">${vo.content}</textarea></td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input name="pwd" type="password" value="${vo.pwd}">${vo.pwd}</td>
			</tr>
			
			<tr>
				<th>업로드</th>
				<td><input type="file" name="file">${vo.filename}</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="수정" onclick="update(this.form)">
					<input type="button" value="돌아가기" onclick="location.href='reviewMain.do'">
				</td>
			</tr>
		
		</table>
		
	</form>
</body>
</html>