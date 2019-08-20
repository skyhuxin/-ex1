package com.Model;

public class member {
	
	private int id;
	private String user,password,level;
	
	public member(String user,String password,String level)
	{
		
		this.user=user;
		this.password=password;
		this.level=level;
		
		
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
	
	
	

}
