package com.jwl.servlet.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 문자 인코딩 설정
		response.setCharacterEncoding("utf-8");
		//컨텐츠 타입 설정 MIME
		response.setContentType("text/plain"); //텍스트파일 .txt
		
		PrintWriter out = response.getWriter();
		
		// 날짜 객체 -now 현재 시간정보가 저장된다.
		Date now = new Date();
		out.println(now);
		
		// 날짜 포메팅
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String dateString = formatter.format(now);
		
		out.println(dateString);
		
		
	}

}
