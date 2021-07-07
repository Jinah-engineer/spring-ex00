<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="bd" tagdir="/WEB-INF/tags/board" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>views - register JSP File</title>
</head>
<body>
	
	<bd:navbar />

	<div class="container">
		<h1>글쓰기</h1>
		
		<div class="row">
			<div class="col-12">
				<form action="${appRoot }/board/register" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label for="input1">제목</label>
						<input id="input1" class="form-control" name="title">
					</div>
					<div class="form-group">
						<label for="textarea1">내용</label>
						<textarea class="form-control" name="content"></textarea>
					</div>
					<!-- Image File upload -->
					<div class="form-group">
						<label for="input3">파일</label>					
							<input id="input3" class="form-control" type="file" name="file" accept="image/*">
					</div>
					<div class="form-group">
						<label for="input2">작성자</label>
						<input id="input2" value="${pinfo.member.userid }" type="hidden" class="form-control" name="writer">
						<input value="${pinfo.member.userName }" readonly class="form-control">
					</div>
						<input class="btn btn-primary" type="submit" value="작성" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>