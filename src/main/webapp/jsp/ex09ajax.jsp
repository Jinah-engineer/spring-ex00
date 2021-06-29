<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>ex09 ajax JSP File</title>
</head>
<body>
	<div class="container">
		
		<script>
			$(function () {
				$("#btn1").click(function () {
					$.ajax({
						url: "${appRoot}/rest09/sub01",
						type: "post",
						data: {
							id: "Jinah Park",
							age: 27
						},
						success: function (data) {
							console.log("btn1", data);
						},
						dataType: "json"
					});
				});
				
				$("#btn2").click(function () {
					$.post({
						url: "${appRoot}/rest09/sub01",
						data: {
							id: "Jinah Park",
							age: 27
						},
						success: function (data) {
							console.log("btn1", data);
						},
						dataType: "json"
					});
				});
				
				$("#btn3").click(function () {
					$.post("${appRoot}/rest09/sub01", {
						id: "Jinah Park",
						age: 27
					}, functi                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ;on (data) {
						console.log("btn3", data);
					}, "json");
				});
			});
		</script>

		
		
		<button id="btn1">BTN 1</button>
		<button id="btn2">BTN 2</button>
		<button id="btn3">BTN 3</button>
		
	</div>
</body>
</html>