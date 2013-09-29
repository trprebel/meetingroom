package com.dao.impl;

import java.util.List;

import com.bean.Log;

public class LogDao {

	public void insertLog(Log log) throws Exception{
		SqlMap.getSqlMapClient().insert("insertLog",log);
	}
	public List<Log> findAllLog() throws Exception{
		return (List<Log>)SqlMap.getSqlMapClient().queryForList("findAllLog");
	}
}
