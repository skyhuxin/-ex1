package com.DBConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conn {

	public static Connection Conn()
	{
		

		String url="jdbc:mysql://localhost:3306/GJUN";
		String user="root";
		String password="1234";
		Connection conn=null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			conn =DriverManager.getConnection(url, user, password);
			
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	
	
	
	
	}
		public static void main(String[] args) {
		
			
			System.out.println(Conn.Conn());
		
	}

	
	
	
	
}
