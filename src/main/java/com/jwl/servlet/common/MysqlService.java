package com.jwl.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	//single turn -> 객체 한개만 생성하게 제한
	//클래스가 자기 객체를 자기가 관리
	//객체 생성없이 사용할 수 있는 변수가 된다.
	//외부에서 객체 생성을 못하게 한다
	private static MysqlService mysqlService = null;
	
	//멤버변수  주소, 아이디, 비밀번호
	
	private final String url = "jdbc:mysql://localhost:3306/jwl_1213";
	private final String userId = "root";
	private final String password = "dlwodnjs2!";
	
	private Connection connection;
	private Statement statement;
	
	//생성자
	private MysqlService() {
		
	}
	
	//객체 생성을 관리하는 메소드 -> 객체 생성없이 호출 가능 (static)
	public static MysqlService getInstance() {
		//하나의 객체만 생성
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	//접속기능
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
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
