<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kh 로그인</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="row text-center text-bg-light g-0 border border-primary" style="width: 100%; height:500px;">
		<div class="align-self-center" style="width:500px; float:none; margin:0 auto">
			<form action="<%=request.getContextPath() %>/login" method="post">
			<div class="form-floating mb-3">
				<input type="text" class="form-control" id ="idlabel" name="id" placeholder="id@example.com">
				<label for="idlabel">아이디</label>
			</div>
			<div class="form-floating">			
				<input type="password" class="form-control" id="pwlabel" name="pw" placeholder="비밀번호">
				<label for="pwlabel">비밀번호</label>	
			</div>
				<div class="text-end p-3" style="white-space:nowrap;">
					<button type="submit" class="btn btn-success">로그인</button>
					<button type="button" class="btn enroll btn-success">회원가입</button>
				</div>		
			</form>
		</div>
	</div>

	
	
	<script>
		$(".btn.enroll").on("click", handlerClickBtnEnroll);
		
		function handlerClickBtnEnroll(){			
			console.log("btnEnroll 눌림");
			location.href="<%=request.getContextPath()%>/enroll";
		}	
	</script>	
</body>
</html>