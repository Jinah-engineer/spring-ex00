<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- Board List -->
<c:url value="/board/list" var="listUrl">
	<c:if test="${not empty cri }">
		<c:param name="pageNum" value="${cri. pageNum }"></c:param>
		<c:param name="amount" value="${cri.amount }"></c:param>
		<c:param name="keyword" value="${cri.keyword }"></c:param>
		<c:param name="type" value="${cri.type }"></c:param>
	</c:if>
</c:url>

<!-- Board Writing -->
<c:url value="/board/register" var="registerUrl">
	<c:if test="${not empty cri }">
		<c:param name="pageNum" value="${cri.pageNum }"></c:param>
		<c:param name="amount" value="${cri.amount }"></c:param>
		<c:param name="keyword" value="${cri.keyword }"></c:param>
		<c:param name="type" value="${cri.type }"></c:param>
	</c:if>
</c:url>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="${appRoot }/board/list">Spring Framework</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Main<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${listUrl }">게시글 보기</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="${registerUrl }">글쓰기</a>
      </li>
      <!-- <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li> -->
    </ul>
  </div>
  
    <form action="${listUrl }" method="get" class="form-inline my-2 my-lg-0">
   	  <select name="type" class="form-control mr-sm-2">
   	  	<option value="">--</option>
   	  	<option value="T" ${cri.type == "T" ? 'selected' : '' }>제목</option>
   	  	<option value="C" ${cri.type == "C" ? 'selected' : '' }>내용</option>
   	  	<option value="W" ${cri.type == "W" ? 'selected' : '' }>작성자</option>
   	  	<option value="TC" ${cri.type == "TC" ? 'selected' : '' }>제목 or 내용</option>
   	  	<option value="TW" ${cri.type == "TW" ? 'selected' : '' }>제목 or 작성자</option>
   	  	<option value="TWC" ${cri.type == "TWC" ? 'selected' : '' }>제목 or 내용 or 작성자</option>
   	  </select>
   	  
      <input name="keyword" value="${cri.keyword }" class="form-control mr-sm-2" 
      type="search" placeholder="Search" aria-label="Search">
      
      <input type="hidden" name="pageNum" value="1">
      <input type="hidden" name="amount" value="${cri.amount }">
      
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
</nav>