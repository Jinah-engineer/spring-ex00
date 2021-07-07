<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="bd" tagdir="/WEB-INF/tags/board" %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>view_member_login JSP File</title>
</head>
<body>
<bd:navbar />
	<div class="container">
		<h1>로그인</h1> <br>
		<div class="row justify-content-center">
			<form action="${appRoot }/login" method="post">
				<div class="form-group">
					<label for="input1">이름</label> 
					<input id="input1" class="form-control" name="username" />
				</div>
				<div class="form-group">
					<label for="input2">패스워드</label> 
					<input id="input2" class="form-control" type="password" name="password" />
				</div>
				
				<div class="form-group form-check">
					<input name="remember-me" type="checkbox" class="form-check-input" id="checkbox1">
					<label class="form-check-label" for="checkbox1">Remember Me</label>
				</div>

				<input class="btn btn-primary" type="submit" value="로그인">
			</form>
		</div>
	</div>
</body>
</html>