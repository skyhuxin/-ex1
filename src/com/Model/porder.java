package com.Model;

public class porder {

	private int p1,p2,p3,sum;
	private String desk;
	
	public porder (int p1,int p2,int p3,String desk)
	{
		this.p1=p1;
		this.p2=p2;
		this.p3=p3;
		this.desk=desk;
		
	}

	public int getP1() {
		return p1;
	}

	public void setP1(int p1) {
		this.p1 = p1;
	}

	public int getP2() {
		return p2;
	}

	public void setP2(int p2) {
		this.p2 = p2;
	}

	public int getP3() {
		return p3;
	}

	public void setP3(int p3) {
		this.p3 = p3;
	}

	public int getSum() {
		sum=getP1()*100+getP2()*150+getP3()*200;
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public String getDesk() {
		return desk;
	}

	public void setDesk(String desk) {
		this.desk = desk;
	}
	
	
	
	
	
	
}
