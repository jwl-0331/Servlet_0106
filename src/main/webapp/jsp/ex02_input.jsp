<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 페이지</title>
</head>
<body>
	<form method="get" action="/jsp/ex02.jsp">
		<label>이름 : </label>
		<input type="text" name="name">
		<label>싱년월일 : </label>
		<input type="text" name="birthday">
		<button type="submit">입력</button>  
	</form>
	
</body>
</html>