<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- webapp 까지의 경로 -->
<script src="${pageContext.request.contextPath}/resources/js/httpRequest.js"></script>
<!-- css 사용한다면 적용할 링크 -->
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/review.css"> --%>

<script>

	function del(f){
		
		var pwd = f.pwd.value;
		
		if(pwd == ''){
			
			alert("비밀번호를 입력해주세요.");
			return;
			
		}
		
		if(!confirm("삭제하시겠습니까?")){
			
			return;
			
		}
		
		var url = "reviewDelete.do";
													// 특수문자&한글 깨지지 않게 해주는 메서드
		var param = "idx=" + f.idx.value +"&pwd=" + encodeURIComponent(pwd);
													
		sendRequest(url, param, callback, "post");
		
	}

</script>
</head>
<body>
	<table border="1" align="center" width="700">
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
			<th>사진</th>
				<c:if test="${vo.filename ne 'no_file'}">
					<td><img src="${pageContext.request.contextPath}/resources/upload/${vo.filename}" width="400"></td>	
				</c:if>
		</tr>
		
		<tr>
			<th>작성일</th>
				<td>${fn:split(vo.regdate,' ')[0]}</td>
		</tr>
		
		<tr>
			<th>조회수</th>
			<td>${vo.readhit}</td>	
		</tr>
		
		<tr>
			<th>추천수</th>
			<td>${vo.joayo}</td>
		</tr>
	</table>
	<div colspan="4" align="center">
		<form>
			<input type="hidden" name="idx" value="${vo.idx}">
			<input type="hidden" name="ori_pwd" value="${vo.pwd}">
			비밀번호<input type="password" name="pwd">
			<input type="button" value="삭제하기" width="100" height="100" onclick="del(this.form)">
			<input type="button" value="목록으로" width="100" height="100" onclick="location.href='reviewMain.do'">
		</form>
	</div>
</body>
</html>