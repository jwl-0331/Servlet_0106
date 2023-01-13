<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제 페이지!</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<%-- 스타일시트 링크 밑에 부트 스트랩 밑에 있어야한다 --%>
	<%-- 브라우저가 접근 가능한 경로로 잡는다 --%>
	<link rel="stylesheet" href="/jspTemplete/ex02/style.css" type="text/css"> 
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section>
			<h1>캬캬몽</h1>
		</section>
		<jsp:include page="footer.jsp" />
		<%-- 안에서 만든 변수 못쓴다. 이미 자바 코드 실행후 끝 --%>
		<%-- 개발 환경에서는 동적 방식이 더 안정적 --%>
		<%-- 각 파일을 쪼개놓아서 사용하는것이 유지보수에 안정적 --%>
		<%-- <%= dateString %> --%>
	</div>
	
</body>
</html>