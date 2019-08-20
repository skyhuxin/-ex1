package com.DBdao.Porder;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.DBConn.Conn;
import com.DBdao.queryIn;
import com.DBdao.updateIn;
import com.Model.porder;


public class update implements updateIn{

	public static void main(String[] args) {
		
		new update().update(3,new porder(1,21,1,"7"));

	}

	@Override
	public void update(int id, Object o) {
		porder p=(porder) o;
		Connection conn=Conn.Conn();
		String sql="update porder set p1 ="+p.getP1()+
				", p2= "+p.getP2() +", p3="+ p.getP3()	+ 
				", sum= "+p.getSum() +",desk= '"+ p.getDesk()+"' where id= "+id 	;
				
		
		try {
			
			PreparedStatement ps= conn.prepareStatement(sql);
			
			ps.executeLargeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
