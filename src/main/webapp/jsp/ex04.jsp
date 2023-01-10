<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문 활용</title>
</head>
<body>
	<%
		//과일이름 리스트
		List<String> fruitList = new ArrayList<>();
		fruitList.add("사과");
		fruitList.add("바나나");
		fruitList.add("딸기");
		fruitList.add("망고");
		
		/*
		String result = "";
		for(String fruit:fruitList){
			result += fruit + " ";
		}
		*/
		
		for(String fruit:fruitList){
			out.println("<h2>" + fruit + "</h2>");
		}
	%>
	<%
		for(String fruit:fruitList){ %>
			<h2><%= fruit %></h2>
	<% 	
		}
	%>
	
	<table border="1">
	<% for(String fruit:fruitList){ %>
		<tr>
			<td><%=fruit %></td>
		</tr>
	<% } %>
		
		
	</table>
</body>
</html>