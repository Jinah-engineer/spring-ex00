<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>ex10 Ajax JSP File</title>

<script>
	$(function () {
		$("#submit1").click(function (e) {
			e.preventDefault();
			$(this).attr("disabled", "disabled");
			$(this).html('<i class="fas fa-spinner fa-spin"></i>');
			
			var id = $("#input1").val();
			var age = $("#input2").val();
			var data = {id: id, age: age};
			
			$.post({
				url: "${appRoot}/rest10/add",
				data: data,
				success: function (data) {
					console.log(data);
					alert(data.id + "가 등록되었습니다 :-)")
					$("#submit1")
					.removeAttr("disabled")
					.html("전송");			
				}
			});
		});
	
		// button2
		$("#button2").click(function () {
			$.get({
				url: "${appRoot}/rest10/list",
				success: function (list) {
					console.log(list);
					
					var table1Body = $("#table1 tbody");
					
					table1Body.empty();
					
					for (var i = 0; i < list.length; i++) {
						var tr = $(generateTableRow(list[i]));
						table1Body.append(tr);
					}
				}	
			});
		});
		
		$("#like-button1").click(function (e) {
			var operation = $(this).attr("data-operation");
			
			var url = "${appRoot}/rest10/" + operation;
			
			$.post({
				url: url,
				success: function (data) {
					$("#like-cnt1").text(data);
					
					if (operation === "like") {
						$("#like-button1").attr("data-operation", "dislike");
						$("#like-icon1").removeClass("far").addClass("fas");
					} else {
						$("#like-button1").attr("data-operation", "like");
						$("#like-icon1").removeClass("fas").addClass("far");
					}
				}
			});
		});
		
		
	});
	
	function generateTableRow(data) {
		return "<tr><td>" + data.id + "</td><td>" + data.age + "</td></tr>"
	}
	
</script>

</head>
<body>
	<div class="container">
		<%= Math.random() %>
		<hr>
			<button id="like-button1" data-operation="like">
				<i id="like-icon1" class="far fa-heart"></i>
				<span id="like-cnt1">10</span>
			</button>		
		<hr>
			<input id="input1" name="id" placeholder="ID를 입력하세요.">
			<input id="input2" name="age" type="number" placeholder="age">
			<!-- input id="submit1" type="submit" value="전송"-->
			<button id="submit1">전송</button>
		
		<button id="button2">목록 보기</button>
		
		<table id="table1" class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>AGE</th>
				</tr>
			</thead>
			<tbody>
				
			</tbody>
		</table>
		
		
	</div>
</body>
</html>