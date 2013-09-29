package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Log;
import com.dao.impl.LogDao;
import com.opensymphony.xwork2.ActionSupport;

public class LogAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String requestlog()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		try
		{
			LogDao logdao=new LogDao();
			List<Log> logs=logdao.findAllLog();
			request.setAttribute("logs", logs);
			return "success";
		}
		catch (Exception e){
			e.printStackTrace();
			return "error";
		}
	}

}
