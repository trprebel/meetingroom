package com.bean;

public class ReserveMR {

	private int id;
	private String username;
	private String mrname;
	private String starttime;
	private String endtime;
	public ReserveMR()//用于搜索功能的初始化
	{
		username=".";
		mrname=".";
		starttime="1980-01-01 00:00:00";
		endtime="2053-01-01 00:00:00";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMrname() {
		return mrname;
	}
	public void setMrname(String mrname) {
		this.mrname = mrname;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	
}
