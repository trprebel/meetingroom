package com.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ReserveMR {

	private int id;
	private String username;
	private String mrname;
	private String starttime;
	private String endtime;
	public ReserveMR()//�����������ܵĳ�ʼ��
	{
		//username=".";
		//mrname=".";
		Date now=new Date();
		String snow=(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(now);
		starttime=snow;
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
