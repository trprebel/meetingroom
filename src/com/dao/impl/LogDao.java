package com.dao.impl;

import java.util.List;

import com.bean.Log;
import com.page.Program;

public class LogDao {

	public void insertLog(Log log) throws Exception{
		SqlMap.getSqlMapClient().insert("insertLog",log);
	}
	public List<Log> findLogList(Program program) throws Exception{
		//System.out.println(program.getStart());
		//System.out.println(program.getLenth());
		return (List<Log>)SqlMap.getSqlMapClient().queryForList("findLogList",program);
	}
	public Integer findPageCount() throws Exception{
		return (Integer)SqlMap.getSqlMapClient().queryForObject("findPageCount");
	}
}
