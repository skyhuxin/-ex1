package com.DBdao.Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.DBConn.Conn;
import com.DBdao.updateIn;
import com.Model.member;

public class update implements updateIn {

	public static void main(String[] args) {
	new update().update(3, new member("a22","159","basic"));

	}

	@Override
	public void update(int id, Object o) {
		member m=(member) o;
		Connection conn=Conn.Conn();
		String sql=	"update member set user ='"+ m.getUser() +
					"', password='"+ m.getPassword()+
					"', level='"+m.getLevel()+"' where id= "+id;
		
		PreparedStatement ps;
		try {
			
			ps = conn.prepareStatement(sql);
			ps.executeLargeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
	}

}
