<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>D-day</title>
</head>
<body>
	<%
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM");
		
		String monthString = "2021-03";
		
		Date date = formatter.parse(monthString);
		
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		
		int dayNum = calendar.get(Calendar.DAY_OF_WEEK);
		
		int day = (dayNum - 1) * -1 + 1;
		int maxDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
	%>
	<div class="container">
		<h1 class="text-center"> <%= monthString %> </h1>
		<table class="table text-center mt-3">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
			<%
				for(int i = 0; i < 6; i++) {
					out.print("<tr class=\"display-4\">");
					for(int j = 0; j < 7; j++) {
						out.print("<td>");
						
						if(day > 0 ) {
							out.print(day);
						}
						out.print("</td>");
						day++;
						
						if(day > maxDay) {
							break;
						}
					}
					out.print("</tr>");
					
					if(day > maxDay) {
						break;
					}
				}
			%>
			
			</tbody>
		</table>
	</div>
</body>
</html>