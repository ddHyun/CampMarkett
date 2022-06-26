<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	function insert(f){
		
		f.action = "reviewInsert.do"
		f.submit();
		
	}
</script>
</head>
<body>
	<form method="inform" enctype="multipart/form-data">
		<table border="1" align="center">
			<tr>
				<th>작성자<th>
				<td><input name="memberid"></td>
			</tr>
			
			<tr>
				<th>상품명<th>
				<td><input name="productid"></td>
			</tr>
			
			<tr>
				<th>제목<th>
				<td><input name="title"></td>
			</tr>
					
			<tr>
				<th>내용<th>
				<td><textarea row="5" cols="50" name="content" style="resize:none;" wrap="on"></textarea></td>
			</tr>
			
			<tr>
				<th>비밀번호<th>
				<td><input name="pwd" type="password"></td>
			</tr>
			
			<tr>
				<th>업로드<th>
				<td><input type="file" name="photo"></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
				<input type="button" value="리뷰등록" onclick="insert(this.form)">
				<input type="button" value="목록으로" onclick="location.href='reviewMain.do'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>