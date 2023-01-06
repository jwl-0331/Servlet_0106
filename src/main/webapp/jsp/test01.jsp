<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 기본</title>
</head>
<body>
	<%
		int sum = 0;
		int[] scores = {80,90,100,95,80};
		for(int i=0; i < scores.length; i++){
			sum += scores[i];
		}
		double avg = sum / (double)scores.length;
	%>
	<h3>점수 평균은 <%= avg %> 입니다.</h3>
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		
		for(String check:scoreList){
			if(check.equals("O")){
				score+= 100 /scoreList.size();
			}
		}
	%>
	<h3>점수 : <%= score %></h3>
	<%!
		public int Sum(int n){
			int sum = 0;
			for(int i=1; i<=n; i++){
				sum += i;
			}
			return sum;
		}
	%>
	<h3>1에서 50까지의 합은 <%= Sum(50) %></h3>
	
	<%
		String birthDay = "20010820";
		String yearString = birthDay.substring(0,4);
		int year = Integer.parseInt(yearString);
		int age = 2022 - year + 1;
	%>
	<h3><%= birthDay %>의 나이는 <%= age %>살 입니다.</h3>
	
</body>
</html>