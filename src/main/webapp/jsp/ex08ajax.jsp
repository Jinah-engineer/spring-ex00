<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>ex08 ajax JSP File</title>
</head>
<body>
	<div class="container">
		
		<script>
			$(function () {
				$("#btn1").click(function () {
					$.ajax({
						url: "${appRoot}/rest08/sub01",
						type: 'get',
						success: function (data) {
							console.log(data);
						}
					});
				});
				
				$("#btn2").click(function () {
					$.get({
						url: "${appRoot}/rest08/sub01",
						success: function (data) {
							console.log("btn2", data);
						}
					});
				});
				
				$("#btn3").click(function () {
					$.get("${appRoot}/rest08/sub01", function (data) {
						console.log("btn3", data);
					});
				});
			});
		</script>
		
		<button id="btn1">BTN 1</button>
		<button id="btn2">BTN 2</button>
		<button id="btn3">BTN 3</button>
		
		<script>
			$(function() {
				$("#btn4").click(function() {
					$.ajax({
						url : "${appRoot}/rest08/sub02",
						type : "get",
						dataType : "json", // 생략 가능 - Ajax 메소드가 지능적으로 추론하기 때문
						success: function (data) {
							console.log("btn4", data);
						}
					});
				});
				
				$("#btn5").click(function () {
					$.get({
						url: "${appRoot}/rest08/sub02",
						dataType: "json",
						success: function (data) {
							console.log("btn5", data);
						}
					});
				});
				
				$("#btn6").click(function () {
					$.get("${appRoot}/rest08/sub02", function (data) {
						console.log("btn6", data);
					}, "json");
				});				
				
				$("#btn7").click(function () {
					$.getJSON("${appRoot}/rest08/sub02", function (data) {
						console.log("btn7", data);
					})
				});
			});
		</script>
		
		<button id="btn4">BTN 4</button>
		<button id="btn5">BTN 5</button>
		<button id="btn6">BTN 6</button>
		<button id="btn7">BTN 7</button>
		
	</div>
</body>
</html>