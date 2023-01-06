package com.jwl.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String money = request.getParameter("price");
		
		out.print("<html><head><title>배탈의민족</title></head><body>");
		
		if(!address.contains("서울시")) {
			out.print("<h1>배달 불가 지역 입니다.</h1>");
		}else if(card.equals("신한카드")) {
			out.print("<h1>결제 불가능한 카드 입니다.</h1>");
		}else {
			out.print("<h3>" + address + "로 배달 준비중</h3> <hr>");
			out.print("결제금액 : " + money + "원");
		}
		out.print("</body></heml>");
		
		
		
	}

}
