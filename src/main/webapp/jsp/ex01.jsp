<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Ex 01 JSP</title>
</head>
<body>
	<div class="container">
		
		<a href="<%=request.getContextPath()%>/ex01/sub03">sub03 Get 방식</a>
		
		<form action="<%=request.getContextPath() %>/ex01/sub03" method="post"> 
			<p>sub03 Post 방식</p>
			<input type="submit" value="post 전송">
		</form>
		
		<hr>
		
		<form action="<%=request.getContextPath() %>/ex01/sub06" method="post">
			<p>sub06 Post 방식</p>
			<input type="submit" value="post 전송">
		</form>
		
	</div>
</body>
</html>