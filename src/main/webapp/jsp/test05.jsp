<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단위변환</title>
</head>
<body>

	<%
		//cm 단위, 변환할 단위들
		int length = Integer.parseInt(request.getParameter("length"));
		//인치 , 야드 , 피트, 미터
		//inch , yard, feet, meter
		String[] units = request.getParameterValues("unit");
		
		String result = "";
		for(int i = 0; i < units.length; i++){
			if(units[i].equals("inch")){
				//인치변환
				double inch = length * 0.39;
				result += inch + "in<br>";
			}else if(units[i].equals("yard")){
				//야드변환
				double yard = length * 0.010936133;
				result += yard + "yd<br>";
			}else if(units[i].equals("feet")){
				//피트변환
				double feet = length * 0.032808399;
				result += feet + "ft<br>";
			}else{
				double meter = length / 100.0;
				result += meter + "m<br>";
			}
		}
	%>
	
	<div>
	<h2>변환결과</h2>
	<h3><%= length %>cm</h3>
	<hr>
	<h3><%= result %></h3>
	</div>
</body>
</html>