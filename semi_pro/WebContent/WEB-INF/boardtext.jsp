<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 조회</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
<section class="bg-light" style="white-space:nowrap;">
	<div class="container py-4">
		<div class="row align-items-center justify-content-between">
			<a class="navbar-brand h1 text-center">
				<span class="text-dark h4">게시글 조회</span>
			</a>
		</div>
	<form action="<%=request.getContextPath() %>/boardtext" method="post" >
		<div class="form-group" style="width:60%; display:inline-block;">
			<label for="titleboot" class="form-label mt-4">제목</label>
			<input type="text" class="form-control" id="idboot" style="width:100%;" name="title"> 
		</div>
		<div class="form-group" style="margin-left:35px; width:30%; display:inline-block;">
			<label for="writerboot" class="form-label mt-4">작성자</label>
			<input type="text" class="form-control" id="writerboot" style="width:100%;" name="writer"> 
		</div>
		<div class="form-group">
			<label for="contentboot" class="form-label mt-4">내용</label>
			<input type="text" class="form-control" id="contentboot" style="height:150px;" name="content"> 
		</div>
		<div class="d-flex justify-content-end text-end p-3">
			<button type="submit" class="btn btn-success">추가하기</button>
		</div>	
	</form>
	</div>
</section>


</body>
</html>