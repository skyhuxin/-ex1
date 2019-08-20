package com.DBdao.Member;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import com.DBConn.Conn;
import com.DBdao.deleteIn;

public class delete implements deleteIn{

	public static void main(String[] args) {
	 new delete().delete(1);
		
	}

	@Override
	public void delete(int id) {
		Connection conn=Conn.Conn();
		
		String sql="delete from company.member where id = " + id ;   

		try {
			CallableStatement ps=conn.prepareCall(sql);
			
			ps.executeUpdate();
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
