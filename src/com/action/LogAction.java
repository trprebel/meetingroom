package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Log;
import com.page.Program;
import com.dao.impl.LogDao;
import com.opensymphony.xwork2.ActionSupport;
import com.page.Paginator;

public class LogAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public Paginator paginator=new Paginator();
	private Program program=new Program();
	public String requestlog()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		try
		{
			LogDao logdao=new LogDao();
			
			//request.setAttribute("logs", logs);
			
			//Paginator paginator=new Paginator();
			//Program program=new Program();
			program.setStart(paginator.getOffset());
			program.setLenth(paginator.getPageSize());
		
			int allRow = logdao.findPageCount();
			//System.out.println(allRow);
			if(allRow==0){
				paginator.setData(0, null);
				return "success";
			}
			List<Log> logs=logdao.findLogList(program);
			//List list = videoDao.findPageList(program, Constants.IBATIS_VIDEO);
			paginator.setData(allRow, logs);
			
			
			
			return "success";
		}
		catch (Exception e){
			e.printStackTrace();
			return "error";
		}
	}
	public Paginator getPaginator() {
		return paginator;
	}
	public void setPaginator(Paginator paginator) {
		this.paginator = paginator;
	}
	public Program getProgram() {
		return program;
	}
	public void setProgram(Program program) {
		this.program = program;
	}

}
