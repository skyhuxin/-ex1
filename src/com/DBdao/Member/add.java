package com.DBdao.Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.DBConn.Conn;
import com.DBdao.addIn;
import com.Model.member;

public class add implements addIn{

	public static void main(String[] args) {
		member m=new member("a81","144","vip");
		new add().add(m);
	}

	@Override
	public void add(Object o) {
		member m=(member)o;
		String sql="insert into member(user,password,level) values(?,?,?)";
		Connection conn=Conn.Conn();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, m.getUser());
			ps.setString(2, m.getPassword());
			ps.setString(3, m.getLevel());
		
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
