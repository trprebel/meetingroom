package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.bean.MeetingRoom;
import com.bean.ReserveMR;
import com.bean.UsedMR;
import com.bean.User;
import com.dao.impl.MeetingRoomDao;
import com.opensymphony.xwork2.ActionSupport;

public class MeetingRoomAction extends ActionSupport{

	/**会议室操作
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String mrname;
	private String floor;
	private String station;
	private String department;
	private String state;
	private String starttime;
	private String endtime;
	private MeetingRoomDao mrdao;
	public String messages;
	//private JSONObject result;
	private List<ReserveMR> resultTree;
	private Map <String,String> result;
	//private JSONArray resultTree;

//	public JSONArray getResultTree() {
//		return resultTree;
//	}
//	public void setResultTree(JSONArray resultTree) {
//		this.resultTree = resultTree;
//	}
//	public String getResult() {
//		return result;
//	}
//	public void setResult(String result) {
//		this.result = result;
//	}
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	//创建会议室
	public String create()
	{
		try
		{
			MeetingRoom mr=new MeetingRoom();
			mr.setDepartment(department);
			mr.setFloor(floor);
			mr.setMrname(mrname);
			mr.setState(Integer.parseInt(state));
			mr.setStation(station);
			
			mrdao=new MeetingRoomDao();
			mrdao.createMR(mr);
			RecordLog.recordlog("创建会议室："+mrname);
			//System.out.println(mrname);
			messages="创建成功！";
			return "create";
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			messages="创建失败！";
			return "error";
		}
		
	}

	//修改会议室属性
	public String modify()
	{
		try{
			mrdao=new MeetingRoomDao();
			MeetingRoom mr=new MeetingRoom();
			mr.setId(Integer.parseInt(id));
			mr.setMrname(mrname);
			mr.setFloor(floor);
			mr.setStation(station);
			mr.setDepartment(department);
			mr.setState(Integer.parseInt(state));
			//System.out.println(station);
			String sState;
			if(Integer.parseInt(state)==1) {
				sState="可用";
			}
			else{
				sState="不可用";
			}
			mrdao.modifyMR(mr);
			RecordLog.recordlog("修改会议室属性为："+mrname+" "+floor+" "+station+" "+department+" "+sState);
			//result="修改成功！";
			result=new HashMap<String,String>();
			result.put("value","修改成功！");
			//result=JSONObject.fromObject(map);
			
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			//result="修改失败！";
			result=new HashMap<String,String>();
			result.put("value","修改失败！");
			//result=JSONObject.fromObject(map);
		}
		return "string";
	}
	//预定会议室
	public String reserve()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		try{
			mrdao=new MeetingRoomDao();
			User user=(User)session.getAttribute("user");
			
			ReserveMR reservemr=new ReserveMR();
			
			reservemr.setMrname(mrname);
			reservemr.setUsername(user.getUsername());
			//System.out.println(mrname);
			//System.out.println(endtime);
			reservemr.setStarttime(starttime);
			reservemr.setEndtime(endtime);
			
			List<ReserveMR> reservedmrs=mrdao.findReservedMRByTime(reservemr);
			if(reservedmrs.isEmpty())
			{
				mrdao.reserveMR(reservemr);
				RecordLog.recordlog("预定会议室："+mrname+"，开始时间:"+starttime+"，结束时间："+endtime);
				messages="预订成功！";
			}
			else{			
				messages="预定失败！该时间段已被预定！";
			}
			
			return "reserve";
		}
		catch(Exception e){
			e.printStackTrace();
			return "error";
		}
		
	}
	//请求会议室预定列表
	public String requestused()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		//HttpSession session=request.getSession();
		try{
			mrdao=new MeetingRoomDao();
			Date now=new Date();
			String snow=(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss")).format(now);
			//System.out.println(snow);
			List<UsedMR> usedmr=mrdao.findUsedMR(snow);
			request.setAttribute("usedmrlist", usedmr);
			return "requestused";
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return "error";
		}
	}
	//取消预定会议室
	public String cancelre()
	{
		try{
			//System.out.println(id);
			mrdao=new MeetingRoomDao();
			mrdao.deleteReMR(Integer.parseInt(id));
			RecordLog.recordlog("取消预定会议室："+mrname);
			//result="取消成功！";
			result=new HashMap<String,String>();
			result.put("value","取消成功！");
			//result=JSONObject.fromObject(map);
			
		}
		catch (Exception e){
			e.printStackTrace();
			//result="取消失败！";
			result=new HashMap<String,String>();
			result.put("value","取消失败！");
			//result=JSONObject.fromObject(map);
		}
		return "string";
	}
	public String timelist()
	{
		try
		{
			//System.out.println(mrname);
			HttpServletResponse response;
			response = ServletActionContext.getResponse();
			response.setCharacterEncoding("utf-8");
			mrdao=new MeetingRoomDao();
			List<ReserveMR> reservemrs= mrdao.findReservedMRByName(mrname);
			//if(reservemrs.isEmpty()) System.out.println("无数据");
			//resultTree=new JSONArray();
			//JSONObject jobject=JSONObject.fromObject(reservemrs.get(0));

			//JSONArray jsarry=new JSONArray();
			//jsarry=JSONArray.fromObject(reservemrs);  //或者JSONArray jsarry=JSONArray.fromObject(list)
			resultTree=reservemrs;

			//resultTree=JSONArray.fromObject(reservemrs);

		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "list";
	}
//	public JSONObject getResult() {
//		return result;
//	}
//	public void setResult(JSONObject result) {
//		this.result = result;
//	}
	public List<ReserveMR> getResultTree() {
		return resultTree;
	}
	public void setResultTree(List<ReserveMR> resultTree) {
		this.resultTree = resultTree;
	}
	public Map<String, String> getResult() {
		return result;
	}
	public void setResult(Map<String, String> result) {
		this.result = result;
	}



}
