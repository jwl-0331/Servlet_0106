<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>샘플 페이지</title>
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
		<%-- 가로배치 : justify-content- , 세로배치 : align-items-  --%>
		<header class="d-flex justify-content-center align-items-center">
			<h1>Layout</h1>
		</header>
		<nav class="main-menu">
			<%-- 메뉴 만들기  --%>
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link">메뉴1</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴2</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴3</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴4</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴5</a></li>
			</ul>
		</nav>
		<section class="contents">
			<img alt="그냥사진" width="500" src="https://cdn.pixabay.com/photo/2022/08/06/06/03/windmill-7367963_640.jpg">
			<div>새해 복 많이 받으세요!!</div>
		</section>
		<footer class="mt-4">Copyright © marondal 2021</footer>
	</div>
</body>
</html>