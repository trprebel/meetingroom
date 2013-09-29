package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.bean.Log;
import com.bean.MeetingRoom;
import com.bean.User;
import com.dao.impl.MeetingRoomDao;
import com.dao.impl.UserDao;
import com.opensymphony.xwork2.ActionSupport;


public class LoginAction extends ActionSupport{

	/**�û���¼
	 * @author zhangxinjian
	 * @date   2013.9.26
	 * @version 1.0
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String email;
	private String userinfo;
	private User user;
	private UserDao userdao;
	public String messages;
	private String authcode;
	private MeetingRoomDao mrdao;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(String userinfo) {
		this.userinfo = userinfo;
	}
	public String getAuthcode() {
		return authcode;
	}
	public void setAuthcode(String authcode) {
		this.authcode = authcode;
	}
	//��¼ģ��
	public String login()
	{
		//System.out.println("login action");
		
		//user=new User();
		try
		{
			userdao=new UserDao();
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			
			String  validatecode=(String)session.getAttribute("rand");
			//System.out.println(validatecode);
			//1.��֤�벻��ȷ
			if(validatecode==null)
			{
				messages="��֤�벻���ڣ�";
				return "login";
			}
			if(!validatecode.equals(getAuthcode()))
			{
				messages="��֤�벻��ȷ��";
				return "login";
			}
			user=this.userdao.findUserByName(getUsername());
			if(user==null)
			{
				messages="�û��������ڣ�";
				//System.out.println("�û���������");
				return "login";
			}
			else if(user.getPassword().equals(getPassword()))//��֤�û������뼰���
			{
				//if(user.getType()==1) //��������Ա
				//{
					session.setAttribute("user", user);
					mrdao=new MeetingRoomDao();
					List<MeetingRoom> meetingrooms=mrdao.findAllMR();
					//System.out.println(meetingrooms.get(0).getMrname());
					session.setAttribute("mrlist", meetingrooms);
					RecordLog.recordlog("��½ϵͳ��");
					
					return "admin";
				//}
				//else if(user.getType()==2)//��ͨ�û�
				//{

				//	session.setAttribute("user",user);
				//	return "user";
				//}
				//else
				//{
				//	return "error";
				//}

				
			}
			else
			{
				//System.out.println("�������!");
				messages="�������";
				return "login";
			}
			//System.out.println(user.getUsername());
			//System.out.println(user.getPassword());
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return "error";
		}
	}


}
