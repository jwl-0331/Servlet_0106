package com.jwl.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jwl.servlet.common.MysqlService;

@WebServlet("/db/test02_insert")
public class Test02InsertController extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String name = request.getParameter("name");
		String site = request.getParameter("site");
		
		String query = "INSERT INTO `site`\r\n"
				+ "(`name`,`url`,`createdAt`,`updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "('" + name +"','" + site +"',now(),now());";
		
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/db/test02.jsp");
	}

}
