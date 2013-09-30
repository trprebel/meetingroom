package com.bean;

public class MeetingRoom {

	private int id;
	private String mrname;
	private String floor;
	private String station;
	private String department;
	private int state;
	private String createtime;
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMrname() {
		return mrname;
	}
	public void setMrname(String mrname) {
		this.mrname = mrname;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getStation() {
		return station;
	}
	public void setStation(String station) {
		this.station = station;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
//	public Object clone()
//	{
//		Object o=null;    
//		try    
//		{    
//			o=(MeetingRoom)super.clone();//Object 中的clone()识别出你要复制的是哪一个对象。    
//		}    
//		catch(CloneNotSupportedException e)    
//		{    
//			e.printStackTrace();   
//		}    
//		return o;  
//	}

}
