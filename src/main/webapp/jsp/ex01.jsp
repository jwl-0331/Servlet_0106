<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jsp</title>
</head>
<body>
	<h2>JSP 기본 문법</h2>
	
	<%
		//자바 주석 사용
		//1 부터 10 까지의 합 구하기
		int sum = 0;
		for(int i = 1; i <= 10 ; i++){
			sum += i;
		}
	%>
	
	<h3>합계 : <%= sum %></h3>
	<input type="text" value="<%= sum %>">
	
	<!-- html 주석 -->
	<%-- jsp 주석 --%>
	<%
		//동물 이름 리스트
		List<String> animals = new ArrayList<>();
		animals.add("dog");
		animals.add("cat");
	%>
	<h3><%= animals.get(0) %></h3>
	<h3><%= animals.get(1) %></h3>
	
	<%--메소드 만들기 --%>
	<%!
		//hello world 문자열 리턴하는 메소드
		public String getHelloWorld(){
			return "Hello World";
		}
	%>
	<h3><%= getHelloWorld() %></h3>
</body>
</html>