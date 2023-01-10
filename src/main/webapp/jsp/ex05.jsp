<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
		//Date now = new Date();
		
		//오늘 날짜 정보를 얻어 온다.
		Calendar today = Calendar.getInstance();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
		//Calendar 의 date 를 얻어온다 .getTime
		
		//하루빼기 (시간년도월, )
		today.add(Calendar.DATE, -53);
		today.add(Calendar.MONTH, 2);
		String formatString = formatter.format(today.getTime());
	%>
	<div>
	<%= formatString %>
	</div>
</body>
</html>