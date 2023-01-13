<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jwl.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>new user 테이블</title>
</head>
<body>
	<%
		//싱글턴 디자인패턴
		MysqlService mysqlService = MysqlService.getInstance(); 
		mysqlService.connect();
		
		String query = "SELECT * FROM `new_user`;";
		
		ResultSet resultSet = mysqlService.select(query);
	%>
	<h2>사용자 정보</h2>
	<table border = "1">
		<thead>
			<tr>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<% while(resultSet.next()){  %>
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><%= resultSet.getString("yyyymmdd") %></td>
				<td><%= resultSet.getString("email") %></td>
				<td><a href="/db/ex02_delete?id=<%= resultSet.getInt("id")%>">삭제</td>
			</tr>
			<% } %>
		</tbody>
	</table>
	
	<a href="/db/ex02_input.jsp">추가하기</a>
</body>
</html>