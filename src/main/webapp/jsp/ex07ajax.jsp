<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>ex07 ajax JSP File</title>
</head>
<body>
	<div class="container">
		
		<script type="text/javascript">
			$(function () {
				$("#btn1").click(function () {
					$.ajax({
						url: "${appRoot}/rest07/sub01",
						data: {
							name: "Jinah Park",
							age: 27
						}, // data를 가지고 있는 객체 만들어주기 
						success: function (data) {
							console.log(data);
						}
					});
				});
			});
		</script>
		
		<button id="btn1">BTN 1</button>
		
		
		<script>
			$(function() {
				$("#btn2").click(function() {
					$.ajax({
						url: "${appRoot}/rest07/sub02",
						type: "post",
						data: {
							id: "jeju",
							age: 22
						},
						success: function (data) {
							console.log(data);
						}
					});
				});
			});
		</script>
		
		<button id="btn2">BTN 2</button>
		
		
		<script>
			$(function () {
				$("#btn3").click(function () {
					$.ajax({
						url: "${appRoot}/rest07/sub03",
						type: "post",
						data: JSON.stringify({
							id: "jeju",
							age: 77
						}),
						contentType: "application/json",
						success: function (data) {
							console.log(data);
						}
					});
				});
			});
		</script>
		
		<button id="btn3">BTN 3</button>
		
		
		<script>
			$(function () {
				$("#btn4").click(function () {
					$.ajax({
						url: "${appRoot}/rest07/sub04",
						success: function (data) {
							// 객체 바로 활용하기 가능!
							console.log(data);
							
							console.log(data.id);
							console.log(data.age);
						}
					});
				});
			});
		</script>
		
		<button id="btn4">BTN 4</button>
	</div>
</body>
</html>