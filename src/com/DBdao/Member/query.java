package com.DBdao.Member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.DBConn.Conn;
import com.DBdao.queryIn;

public class query implements queryIn {
	private static String Level;
	private static int	id;
	public static int getId() {
		return id;
	}

	public static String getLevel() {
		return Level;
	}

	public static void main(String[] args) throws SQLException {
		//while(rs.next())
		//{
		System.out.println(query.querybyuser("fox", "821203"));
		System.out.println(Level);
		//}

	}

	@Override
	public  ResultSet queryAll() {
		Connection conn=Conn.Conn();
		String sql="select * from member " ;
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
		String sql="select * from member where id= "+ id ;
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

	public static boolean querybyuser(String user,String password) {
		Connection conn=Conn.Conn();
		String sql="select * from member where user = '"+ user +"'" ;
		boolean x=false;
		ResultSet rs=null;
		Statement st;
		String pwc=null;
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			rs.next();
			pwc=rs.getString("password");
			Level=rs.getString("level");
			if(password.equals(pwc))
			{
				x=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return x;
	}
	public static boolean querycheck(String user) {
		Connection conn=Conn.Conn();
		String sql="select * from member where user = '"+ user +"'" ;
		boolean x=false;
		ResultSet rs=null;
		Statement st;
		
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			
			if(rs.next()==true)
			{
				x=true;
				Level=rs.getString("level");
				id=rs.getInt("id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return x;
	}
	
	
	
	
	
	
	
	
	
}