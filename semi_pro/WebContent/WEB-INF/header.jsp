<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<header>
	<div>
		<c:choose>
			<c:when test="${empty lgnss }">
				<button type="button" class="btn login btn btn-outline-primary" style="width: 100%; height:200px; display:inline-block;">로그인</button>
			</c:when>
			<c:otherwise>
				<button type="button" class="btn logout btn btn-outline-danger" style="width: 100%; height:200px; display:inline-block;">로그아웃</button>
			</c:otherwise>		
		</c:choose>
	</div>
</header>