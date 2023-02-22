<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="row ">
	<div class="d-flex justify-content-center text-bg-light p-3 border border-primary">	
	<h1>일상 게시판</h1>	
	</div>	
	<div class="p-0 border border-info" style="background-color: rgb(198,227,255); height: 400px; white-space:nowrap; display:flex;">
	<div class="border border-secondary" style="width:49%; height:100%; display: inline-block;" >
	</div>
	<div style="width:49%; height:100%; display: inline-block;">
	<jsp:include page="/WEB-INF/header.jsp"/>	
		<c:if test="${not empty lgnss}">
			<button type="button" class="btn myinfo btn btn-outline-success" style="width: 100%; height:100px; display:inline-block;">내정보보기</button>
			<br>
			<button type="button" class="btn board btn btn-outline-success" style="width: 100%; height:100px; display:inline-block;">게시판으로 이동</button>
		</c:if>
	</div>
	</div>
	
	<script>
	$(".btn.login").on("click", BtnLogin);
	$(".btn.logout").on("click", BtnLogout);
	$(".btn.myinfo").on("click", BtnMyinfo);
	$(".btn.board").on("click", BtnBoard);
	
	function BtnLogin(){
		alert("로그인 페이지로 이동")
		location.href="<%=request.getContextPath()%>/login";
	}
	function BtnLogout(){
		alert("로그아웃");
		location.href="<%=request.getContextPath()%>/logout";
	}

	function BtnMyinfo(){
		alert("내정보 페이지로 이동");
		location.href="<%=request.getContextPath()%>/myinfo";
	}
	function BtnBoard(){
		alert("게시판으로 이동");
		location.href="<%=request.getContextPath()%>/boardlist";
	}
	</script>
	</div>
</body>
</html>