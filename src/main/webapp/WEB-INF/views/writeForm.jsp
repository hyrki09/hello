<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<form action="write" method="post">
		<div class="mb-3">
			<label for="basic-url" class="form-label">작성자</label>
			<div class="input-group">
				<input type="text" class="form-control" id="basic-url" name="writer"
					aria-describedby="basic-addon3">
			</div>
		</div>
		
		<div class="mb-3">
			<label for="basic-url" class="form-label">제목</label>
			<div class="input-group">
				<input type="text" class="form-control" id="basic-url" name="title"
					aria-describedby="basic-addon3">
			</div>
		</div>
		
		<div class="mb-3">
			<label for="basic-url" class="form-label">내용</label>
			<div class="input-group">
				<textarea class="form-control" name="contents" aria-label="With textarea"></textarea>
			</div>
		</div>
		<input type="submit" class="btn btn-outline-success" value="작성" />
		<a href="/board/list" class="btn btn-outline-secondary">돌아가기</a>
		</form>
	</div>


</body>
</html>