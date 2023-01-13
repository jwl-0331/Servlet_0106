package com.jwl.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jwl.servlet.common.MysqlService;

@WebServlet("/db/ex02_insert")
public class Ex02InsertController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		response.setContentType("text/plain");
		
//		PrintWriter out = response.getWriter();
		
		//파라미터로 전달 받아서 인서트 (이름, 생년월일, 이메일)
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		
		
		//Insert 쿼리 jsp 필요없음 class 로 생성
		//채워질 값을 전달 받아서 쿼리에 추가한다
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String insertQuery = "INSERT INTO `new_user`\r\n"
				+ "(`name`,`yyyymmdd`,`email`, `createdAt`, `updatedAt`)\r\n"
				+ "value\r\n"
				+ "('" + name + "','" +birthday +"', '" + email +"', now(), now());";
		
		int count = mysqlService.update(insertQuery);
		//out.println("수행 결과 : " + count);
		
		mysqlService.disconnect();
		
		//화면에 보여줄게 없는 페이지 (전달된 값을 insert 해주는 페이지) - 특정 페이지로 이동 redirect)
		response.sendRedirect("/db/ex02.jsp");
	}
}
