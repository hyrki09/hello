<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
	<h1>list.jsp</h1>

	<div class="container">
	
	<table class="table table-striped">
		<tr>
			<td colspan="3">
				<a href="write" class="btn btn-outline-primary">작성</a>
			</td>
		</tr>
		<tr>
			<th>게시물번호</th>
			<th>제목</th>
			<th>작성자</th>
		</tr>
		<c:forEach var="dto" items="${list}">
		<tr>
			<td>${dto.bno}</td>
			<td><a href="detail?bno=${dto.bno}">${dto.title}</a></td>
			<td>${dto.writer}</td>	
		</tr>
		</c:forEach>
		
		<tr>
				<td colspan="4">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<c:if test="${map.isPre}">
					    	<li class="page-item"><a class="page-link" href="list?cp=${map.currentPage-5}">Previous</a></li>
						</c:if>
						<c:forEach var="i" begin="${map.startPage}" end="${map.endPage}" >
						    <li class="page-item"><a class="page-link" href="list?cp=${i}">${i}</a></li>
						</c:forEach>
					    <c:if test="${map.isNext }">
				    		<li class="page-item"><a class="page-link" href="list?cp=${map.currentPage+5}">Next</a></li>
				    	</c:if>
					</ul>
				</nav>
				</td>
			</tr>
	</table>
	</div>
</body>
</html>