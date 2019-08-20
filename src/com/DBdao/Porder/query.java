package com.DBdao.Porder;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.DBConn.Conn;
import com.DBdao.queryIn;

public class query implements queryIn {

	public static void main(String[] args) throws SQLException {
		
		

	}

	@Override
	public  ResultSet queryAll() {
		Connection conn=Conn.Conn();
		String sql="select * from porder";
		ResultSet rs=null;
		
		Statement st;
		
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return rs
				;
	}

	@Override
	public ResultSet querybyid(int id) {
		Connection conn=Conn.Conn();
		String sql="select *from porder where id= "+ id;
		ResultSet rs=null;
		Statement st;
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}

}
