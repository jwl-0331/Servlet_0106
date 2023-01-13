<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_Input</title>
</head>
<body>
	<form method="get" action="/db/ex02_insert">
		<label>이름 : </label> <input type="text" name="name"> <br>
		<label>생년월일 : </label> <input type="text" name="birthday"> <br>
		<label>이메일 : </label> <input type="text" name="email"> <br>
		<button type="submit">가입</button>
	</form>
	
	<a href="/db/ex02.jsp">목록</a>
</body>
</html>