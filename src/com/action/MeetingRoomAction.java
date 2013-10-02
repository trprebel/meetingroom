package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.bean.MeetingRoom;
import com.bean.ReserveMR;
import com.bean.UsedMR;
import com.bean.User;
import com.dao.impl.MeetingRoomDao;
import com.dao.impl.UserDao;
import com.opensymphony.xwork2.ActionSupport;

public class MeetingRoomAction extends ActionSupport{

	/**�����Ҳ���
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
	private String username;
	private MeetingRoomDao mrdao;
	public String messages;
	//private JSONObject result;
	private List<ReserveMR> resultTree; //json list���ͷ��ؽ��,ĳ�����ҵ�Ԥ��ʱ���б�
	private Map <String,String> result; //json map���ͷ��ؽ��
	private List<UsedMR> MRList;   //json �������������
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public List<UsedMR> getMRList() {
		return MRList;
	}
	public void setMRList(List<UsedMR> list) {
		MRList = list;
	}
	//����������
	public String create()
	{
		try
		{
			HttpServletRequest request=ServletActionContext.getRequest();
			HttpSession session=request.getSession();
			MeetingRoom mr=new MeetingRoom();
			mr.setDepartment(department);
			mr.setFloor(floor);
			mr.setMrname(mrname);
			mr.setState(Integer.parseInt(state));
			mr.setStation(station);
			
			mrdao=new MeetingRoomDao();
			mrdao.createMR(mr);
			RecordLog.recordlog("���������ң�"+mrname);
			mrdao=new MeetingRoomDao();
			List<MeetingRoom> meetingrooms=mrdao.findAllMR();
			//System.out.println(meetingrooms.get(0).getMrname());
			session.setAttribute("mrlist", meetingrooms);
			//System.out.println(mrname);
			messages="�����ɹ���";
			return "create";
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			messages="����ʧ�ܣ�";
			return "error";
		}
		
	}

	//�޸Ļ���������
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
				sState="����";
			}
			else{
				sState="������";
			}
			mrdao.modifyMR(mr);
			RecordLog.recordlog("�޸Ļ���������Ϊ��"+mrname+" "+floor+" "+station+" "+department+" "+sState);
			//result="�޸ĳɹ���";
			result=new HashMap<String,String>();
			result.put("value","�޸ĳɹ���");
			//result=JSONObject.fromObject(map);
			
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			//result="�޸�ʧ�ܣ�";
			result=new HashMap<String,String>();
			result.put("value","�޸�ʧ�ܣ�");
			//result=JSONObject.fromObject(map);
		}
		return "string";
	}
	//Ԥ��������
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
				RecordLog.recordlog("Ԥ�������ң�"+mrname+"����ʼʱ��:"+starttime+"������ʱ�䣺"+endtime);
				messages="Ԥ���ɹ���";
			}
			else{			
				messages="Ԥ��ʧ�ܣ���ʱ����ѱ�Ԥ����";
			}
			
			return "reserve";
		}
		catch(Exception e){
			e.printStackTrace();
			return "error";
		}
		
	}
	//���������Ԥ���б�
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
			UserDao userdao=new UserDao();
			List<String> usernames=userdao.findAllUsername();
			request.setAttribute("usernames", usernames);
			return "requestused";
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return "error";
		}
	}
	//ȡ��Ԥ��������
	public String cancelre()
	{
		try{
			//System.out.println(id);
			mrdao=new MeetingRoomDao();
			mrdao.deleteReMR(Integer.parseInt(id));
			RecordLog.recordlog("ȡ��Ԥ�������ң�"+mrname);
			//result="ȡ���ɹ���";
			result=new HashMap<String,String>();
			result.put("value","ȡ���ɹ���");
			//result=JSONObject.fromObject(map);
			
		}
		catch (Exception e){
			e.printStackTrace();
			//result="ȡ��ʧ�ܣ�";
			result=new HashMap<String,String>();
			result.put("value","ȡ��ʧ�ܣ�");
			//result=JSONObject.fromObject(map);
		}
		return "string";
	}
	//ĳ���������ѱ�Ԥ����ʱ���б�
	public String timelist()
	{
		try
		{
			//System.out.println(mrname);
			//HttpServletResponse response;
			//response = ServletActionContext.getResponse();
			//response.setCharacterEncoding("utf-8");
			
			Date now=new Date();
			String snow=(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss")).format(now);
			Map<String, String>map=new HashMap<String, String>();
			map.put("mrname", mrname);
			map.put("time", snow);
			mrdao=new MeetingRoomDao();
			List<ReserveMR> reservemrs= mrdao.findReservedMRByName(map);//ֻ���ҵ�ǰʱ��֮���
			//if(reservemrs.isEmpty()) System.out.println("������");
			//resultTree=new JSONArray();
			//JSONObject jobject=JSONObject.fromObject(reservemrs.get(0));

			//JSONArray jsarry=new JSONArray();
			//jsarry=JSONArray.fromObject(reservemrs);  //����JSONArray jsarry=JSONArray.fromObject(list)
			resultTree=reservemrs;

			//resultTree=JSONArray.fromObject(reservemrs);

		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "list";
	}
	//������������Ԥ���Ļ�����
	public String searchused()
	{
		try
		{
			//System.out.println(mrname);
			ReserveMR reservemr=new ReserveMR();
			Date now=new Date();
			String snow=(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss")).format(now);
			if(!mrname.equals(""))reservemr.setMrname(mrname);
			//System.out.println(reservemr.getMrname());
			if(!username.equals("")) reservemr.setUsername(username);
			//System.out.println(reservemr.getUsername());
			if(!starttime.equals("")) reservemr.setStarttime(starttime);
			else reservemr.setStarttime(snow);
			//System.out.println(reservemr.getStarttime());
			if(!endtime.equals("")) reservemr.setEndtime(endtime);
			//System.out.println(reservemr.getEndtime());
			MeetingRoomDao mrdao=new MeetingRoomDao();
			MRList= mrdao.findReservedMRByAtt(reservemr);
//			if(MRList.isEmpty()) System.out.println("mrlist is null");
//			else{
//				System.out.println(MRList.get(0).getId());
//				System.out.println(MRList.get(1).getId());
//			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "searchedmrlist";
	}


//	public JSONObject getResult() {
//		return result;
//	}
//	public void setResult(JSONObject result) {
//		this.result = result;
//	}




}
