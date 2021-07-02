<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>EX11 Upload JSP File</title>
</head>
<body>
	<div class="container">
		
		<form action="${appRoot }/upload/sub01" method="post" enctype="multipart/form-data">
			First name : <input name="fname" value="Jinah" /><br>
			File : <input type="file" name="ufile" accept="image/*"/> <br>
			<input type="submit">
		</form>
		
		<hr>
		
		<form action="${appRoot }/upload/sub02" method="post" enctype="multipart/form-data">
			name : <input name="name" value="Jinah" /> <br>
			file : <input type="file" name="file" accept="image/*" /> <br>
			<input type="submit">
		</form>
		
	</div>
</body>
</html>