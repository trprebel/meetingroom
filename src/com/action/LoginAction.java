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

	/**用户登录
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
	//登录模块
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
			//1.验证码不正确
			if(validatecode==null)
			{
				messages="验证码不存在！";
				return "login";
			}
			if(!validatecode.equals(getAuthcode()))
			{
				messages="验证码不正确！";
				return "login";
			}
			user=this.userdao.findUserByName(getUsername());
			if(user==null)
			{
				messages="用户名不存在！";
				//System.out.println("用户名不存在");
				return "login";
			}
			else if(user.getPassword().equals(getPassword()))//验证用户名密码及身份
			{
				//if(user.getType()==1) //超级管理员
				//{
					session.setAttribute("user", user);
					mrdao=new MeetingRoomDao();
					List<MeetingRoom> meetingrooms=mrdao.findAllMR();
					//System.out.println(meetingrooms.get(0).getMrname());
					session.setAttribute("mrlist", meetingrooms);
					RecordLog.recordlog("登陆系统！");
					
					return "admin";
				//}
				//else if(user.getType()==2)//普通用户
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
				//System.out.println("密码错误!");
				messages="密码错误！";
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
