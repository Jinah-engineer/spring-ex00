<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>ex08 sub 02 jsp file</title>
</head>
<body>
	<div class="container">
		
		<h1>ex08, sub02 view</h1>
		
		<h3>id : ${user.id }</h3>
		<h3>age : ${user.age }</h3>
		<h3>String : ${string }</h3>
		<h3>Integer : ${integer }</h3>
		
	</div>
</body>
</html>