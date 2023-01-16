<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<form action="modify" method="post">
		<table class="table table-striped-columns">
			<tr>
				<th>게시물번호</th>
				<td>${dto.bno}</td>
				<input type="hidden" name="bno" value="${dto.bno}" />
				<th>작성일시</th>
				<td>${dto.regdate}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" id="" value="${dto.writer}" /></td>
				<th>조회수</th>
				<td>${dto.hits}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"><input type="text" name="title" id="" value="${dto.title}" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"><textarea class="form-control" name="contents" aria-label="With textarea">${dto.contents}</textarea> </td>
			</tr>

			<tr>
				<td colspan="4">
					<a href="list" class="btn btn-outline-primary">목록</a>
					<input type="submit" class="btn btn-outline-success" value="수정" />

				</td>
			</tr>
		</table>
		</form>
	</div>


</body>
</html>