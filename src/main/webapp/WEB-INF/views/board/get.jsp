<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="bd" tagdir="/WEB-INF/tags/board"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/submodules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>view - get JSP File</title>
</head>
<body>

	<bd:navbar />

	<div class="container">

		<h1>글 보기</h1>

		<div class="row">
			<div class="col-12">
				<form>
					<div class="form-group">
						<label for="input1">제목</label> <input readonly="readonly"
							id="input1" class="form-control" value="${board.title }"
							name="title">
					</div>
					<div class="form-group">
						<label for="textarea1">내용</label>
						<textarea readonly="readonly" class="form-control" name="content"><c:out
								value="${board.content }"></c:out></textarea>
					</div>
					<div class="form-group">
						<label for="input2">작성자</label> <input readonly="readonly"
							id="input2" class="form-control" value="${board.writer }"
							name="writer">
					</div>
					<input class="btn btn-primary" type="submit" value="작성" />
					
					<a class="btn btn-secondary" href="${appRoot }/board/modify?bno=${board.bno}">수정/삭제</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>