package com.DBdao.Porder;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.DBConn.Conn;
import com.DBdao.addIn;
import com.Model.porder;

public class add implements addIn{
	

	
	public static void main(String[] args) {
	porder p=new porder(5,2,3,"4");
		new add().add(p);
		
		
	}
	@Override
	public void add(Object o) {
		porder p=(porder)o;
		
		String sql="insert into porder(p1,p2,p3,sum,desk) values(?,?,?,?,?)";
		Connection conn=Conn.Conn();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
		
			ps.setInt(1, p.getP1());
			ps.setInt(2, p.getP2());
			ps.setInt(3, p.getP3());
			ps.setInt(4, p.getSum());
			ps.setString(5,p.getDesk());
			
			ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}
}
		
		
		
		
		
	

	
	


