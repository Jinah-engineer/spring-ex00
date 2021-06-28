<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>ex05 rest JSP File</title>
	
<script>
	$(document).ready(function () {
		$("#test1").click(function () {
			$.ajax({
				url: '${appRoot}/rest05/sub01',
				type: 'post',
				data: '{"id":"Korea", "age":30}',
				contentType: 'application/json',
				success: function(data) {
					console.log(data);
				},
				error: function() {
					console.log("fail");
				}
			});
		});
	});
</script>

</head>
<body>
	<div class="container">
		
		<button id="test1">Button</button>
		
	</div>
</body>
</html>