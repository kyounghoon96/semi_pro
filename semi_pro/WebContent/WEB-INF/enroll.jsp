<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<section class="bg-light">
	<div class="container py-4">
		<div class="row align-items-center justify-content-between">
			<a class="navbar-brand h1 text-center">
				<span class="text-dark h4">회원가입</span>
			</a>
		</div>
			<form action="<%=request.getContextPath()%>/enroll" method="post">
				<div class="form-group">
					<label for="idboot" class="form-label mt-4">아이디</label>
					<input type="text" class="form-control" id="idboot" style="width:60%" name="id"> 
				</div>
				<div class="form-group has-success">
					<label class="form-label mt-4" for="pwboot">비밀번호</label>
					<input type="password" class="form-control is-valid" id="pwboot" style="width:60%" name="pw">
					<div class="valid-feedback"></div>				
				</div>
				<div class="form-group">
					<label for="emailboot" class="form-label mt-4">이메일</label>
					<input type="email" class="form-control" id="emailboot" placeholder="id@example.com" name="email">
				</div>
				<div class="form-group">
					<label for="nameboot" class="form-label mt-4">이름</label>
					<input type="text" class="form-control" id="nameboot" style="width:60%"name="user_name">
				</div>
				<div class="bir_wrap">
					<label class="form-label mt-4" style="width:100%;">생년월일</label>
					<div class="bir_yy" style="width:32%; display:inline-block;">
						<span class="ps_box">
							<input type="text" class="form-control" id="yy" placeholder="년" maxlength="4"  name="birth">
						</span>
					</div>
					<div class="bir_mm" style="width:32%; display:inline-block;">
						<span class="ps_box focus">
							<input type="text" class="form-control" id="mm" placeholder="월" maxlength="2"  name="birth">					
						</span>					
					</div>
					<div class="bir_dd" style="width:32%; display:inline-block;">
						<span class="ps_box">
							<input type="text" class="form-control" id="dd" placeholder="일" maxlength="2"  name="birth">
						</span>					
					</div>
					</div>
					<div class="form-group">
						<label for="phoneboot" class="form-label mt-4">전화번호</label>
						<input type="text" class="form-control" id="phoneboot" style="width:60%" name="phone">
					</div>
					<div class="form-group">
						<label for="genderboot" class="form-label mt-4">성별</label>
						<input type="text" class="form-control" id="genderboot" style="width:20%" name="gender">
					</div>
						<div class="form-group">
						<label for="addressboot" class="form-label mt-4">주소</label>
						<input type="text" class="form-control" id="addressboot" name="address">
					</div>
					<div class="text-end p-3" style="white-space:nowrap;">
						<button type="submit" class="btn btn-success">회원가입</button>
					</div>
			</form>
		</div>						
	</section>
</body>
</html>
