<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내정보</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/resources/css/myinfo.css" rel="stylesheet">
</head>
<body>

	<section class="bg-light">
	<div class="container py-4">
		<div class="row align-items-center justify-content-between">
			<a class="navbar-brand h1 text-center">
				<span class="text-dark h4">내정보</span>
			</a>
		</div>
		<form>
			<c:if test="${empty myinfo }">
				<script>
				alert("로그인 상태가 아닙니다.");
				location.href="<%=request.getContextPath() %>/login";
				</script>		
			</c:if>
			<c:if test="${not empty myinfo }">
				<div class="form-group">
					<label for="idboot" class="form-label mt-4">아이디</label>
					<input type="text" class="form-control" id="idboot" style="width:60%" value="${myinfo.id }">
				</div>
				<div class="form-group">
					<label class="form-label mt-4" for="pwboot">비밀번호</label>
					<input type="text" class="form-control" id="pwboot" style="width:60%" value="${myinfo.pw }">			
				</div>
				<div class="form-group">
					<label for="emailboot" class="form-label mt-4">이메일</label>
					<input type="email" class="form-control" id="emailboot" value="${myinfo.email }">
				</div>
				<div class="form-group">
					<label for="nameboot" class="form-label mt-4">이름</label>
					<input type="text" class="form-control" id="nameboot" style="width:60%" value="${myinfo.user_name }">
				</div>
				<div class="form-group">
					<label for="birthboot" class="form-label mt-4">생년월일</label>
					<input type="text" class="form-control" id="birthboot" value="${myinfo.birth }">
				</div>
					<div class="form-group">
						<label for="phoneboot" class="form-label mt-4">전화번호</label>
						<input type="text" class="form-control" id="phoneboot" style="width:60%" value="${myinfo.phone }">
					</div>
					<div class="form-group">
						<label for="genderboot" class="form-label mt-4">성별</label>
						<input type="text" class="form-control" id="genderboot" style="width:20%" value="${myinfo.gender }">
				</div>
					<div class="form-group">
					<label for="addressboot" class="form-label mt-4">주소</label>
					<input type="text" class="form-control" id="addressboot" value="${myinfo.address }">
				</div>		
			</c:if>
		</form>
		</div>
		<div class="text-end p-3" style="white-space:nowrap;">
			<a href="<%=request.getContextPath() %>/" onclick="gomain()" class="btn btn-success">메인으로 이동</a>
		</div>
	</section>	
	<script>	
	function gomain(){
		alert("메인페이지로 이동합니다.");
	}
	</script>	
</body>
</html>