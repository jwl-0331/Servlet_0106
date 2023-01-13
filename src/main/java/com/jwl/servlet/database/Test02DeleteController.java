package com.jwl.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jwl.servlet.common.MysqlService;

@WebServlet("/db/test02_delete")
public class Test02DeleteController extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String query = "DELETE FROM `site` WHERE `id` = "+ id +";";
		
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		try {
			response.sendRedirect("/db/test02.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
