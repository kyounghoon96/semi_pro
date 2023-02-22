<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
<link href="<%=request.getContextPath()%>/resources/css/boardlist.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	
	<h1>게시판</h1>
	<table class="table table-hover">
		<tr>
			<td>글번호</td>
			<td>글제목</td>
			<td>작성자</td>
			<td>작성시간</td>	
		</tr>	
		<c:forEach items="${boardlist }" var="vo">
			<tr>
				<td>${vo.boardNum }</td>
				<td><a href="<%=request.getContextPath() %>/boardtext">${vo.boardTitle }</a></td>
				<td>${vo.boardWriter }</td>
				<td>${vo.boardDate }</td>
			</tr>
		</c:forEach>	
	</table>
	<div>
		<button type="button" onclick="location.href='<%=request.getContextPath()%>/boardadd'" class="btn btn-light">작성</button>
		<button type="button" onclick="location.href='<%=request.getContextPath()%>/boardupdate'" class="btn btn-light">수정</button>
	</div>	
</body>
</html>