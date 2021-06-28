<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>ex06 Ajax JSP File</title>
</head>
<body>

	<h3>
		<%-- 
			새로 고침할 때마다 임의 값이 출력되지만, 
			if Ajax syntax exists, 
			임의의 값이 출력되지 않는다. 
			왜지? 
		 --%>
		<%= Math.random() %>
	</h3>

	<div class="container">
		
		<script>
			$(function() {
				$("#btn1").click(function() {
					console.log("click btn1");
					$.ajax("${appRoot}/rest06/sub01");
				});
				
				$("#btn11").click(function () {
					$.ajax({
						url: "${appRoot}/rest06/sub01"	
					});
				});
			});
		</script>
		
		<button id="btn1">버튼1</button>
		<button id="btn11">버튼1-1</button>
		
		
		
		<script>
			$(document).ready(function () {
				$("#btn2").click(function () {
					var jqXHR = $.ajax("${appRoot}/rest06/sub02");
					jqXHR.done(function(data) {
						console.log("btn2 done function");
						console.log(data)
					});
				});		
			});
		</script>
		
		<button id="btn2">버튼2</button>
		
		
		<script>
			$(function() {
				$("#btn3").click(function() {
					$.ajax("${appRoot}/rest06/sub02").done(function (res) {
						console.log("btn3 done function is working-!");
						console.log(res);
					});
				});
				
				$("#btn31").click(function () {
					$.ajax({
						url: "${appRoot}/rest06/sub02",
						success: function (res) {
							console.log("btn3-1 success function");
							console.log(res);
						}
					});
				});
			});
		</script>
		
		<button id="btn3">BTN3</button>
		<button id="btn31">BTN3-1</button>
		
		
		
		<script>
			$(function () {
				$("#btn4").click(function () {
					$.ajax("${appRoot}/rest06/sub04")
					.done(function () {
						console.log("successed!");
					})
					.fail(function () {
						console.log("failed!");
					});
				});
				
				$("#btn41").click(function () {
					$.ajax({
						url: "${appRoot}/rest06/sub04",
						error : function () {
							console.log("Error option is activated from btn 4-1 button-! ")
						}
					});
				});
			});
		</script>
		
		<button id="btn4">BTN4</button>
		<button id="btn41">BTN4-1</button>
		
		<script>
			$(function () {
				$("#btn5").click(function () {
					$.ajax({
						url: "${appRoot}/rest06/sub05",
						type: "put" // type을 method로 교체 가능
					});
				});
			});
		</script>
		
		<button id="btn5">버튼5</button>
	</div>
</body>
</html>