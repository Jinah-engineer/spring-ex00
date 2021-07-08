<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="bd" tagdir="/WEB-INF/tags/board" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Member - signup JSP File</title>
</head>
<body>
	
	<bd:navbar />
	
	<c:if test="${not empty param.error }">
		<div id="alert1" class="alert alert-danger" role="alert">
			회원가입에 실패하였습니다.
		</div>
	</c:if>	
	
	<div class="container">
	<h1 style="font-family:Georgia">Sign Up Please!</h1> <br>
		<div class="col-12">
			<form method="post" action="${appRoot }/member/signup">
				<div class="form-group">
					<label for="signup-input1">아이디</label>
					<input type="text" class="form-control" id="input1" name="userid">
				</div>
				<div class="form-group">
					<label for="signup-input2">패스워드</label>
					<input type="password" class="form-control" id="input2" name="userpw">
				</div>
				<div class="form-group">
					<label for="signup-input3">이름</label>
					<input type="text" class="form-control" id="input3" name="userName">
				</div>
				<button type="submit" class="btn btn-primary" id="signup-btn1">회원가입</button>
			</form>
		</div>
	</div>
</body>
</html>