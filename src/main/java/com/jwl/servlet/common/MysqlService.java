package com.jwl.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	//멤버변수  주소, 아이디, 비밀번호
	
	private final String url = "jdbc:mysql://localhost:3306/jwl_1213";
	private final String userId = "root";
	private final String password = "dlwodnjs2!";
	
	private Connection connection;
	private Statement statement;
	
	//접속기능
	public void connect() {
		try {
			connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//쿼리 수행기능
	public ResultSet select(String query) {
		
		try {
			return statement.executeQuery(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return null;
		}
	}
	
	//쿼리 수행기능 insert, update, delete
	public int update(String query) {
		try {
			return statement.executeUpdate(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
	}
	
	//접속 끊는 메소드
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
}
