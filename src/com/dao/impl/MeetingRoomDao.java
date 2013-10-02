package com.dao.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.bean.MeetingRoom;
import com.bean.ReserveMR;
import com.bean.UsedMR;

public class MeetingRoomDao {
	
	//创建会议室
	public void createMR(MeetingRoom mr) throws Exception{
		SqlMap.getSqlMapClient().insert("createMR",mr);
	}
	//会议室列表
	public List<MeetingRoom> findAllMR() throws Exception{
		return (List<MeetingRoom>) SqlMap.getSqlMapClient().queryForList("findAllMR");
	}
	//修改会议室属性
	public void modifyMR(MeetingRoom mr) throws Exception{
		SqlMap.getSqlMapClient().update("modifyMR",mr);
	}
	//预订会议室
	public void reserveMR(ReserveMR reservemr) throws Exception{
		SqlMap.getSqlMapClient().insert("reserveMR",reservemr);
	}
	//查找以预定的会议室
	public List<UsedMR> findUsedMR(String now) throws Exception{
		return (List<UsedMR>)SqlMap.getSqlMapClient().queryForList("findUsedMR",now);
	}
	//取消预定会议室
	public void deleteReMR(int id) throws Exception{
		SqlMap.getSqlMapClient().delete("deleteReMR",id);
	}
	//通过时间查找以预定的会议室
	public List<ReserveMR> findReservedMRByTime(ReserveMR reservemr) throws Exception{
		return (List<ReserveMR>)SqlMap.getSqlMapClient().queryForList("findReservedMRByTime",reservemr);
	}
	//通过会议室名查找会议室
	public List<ReserveMR> findReservedMRByName(Map<String, String> map) throws Exception{
		return (List<ReserveMR>)SqlMap.getSqlMapClient().queryForList("findReservedMRByName",map);
	}
	//通过用户名、会议室名和时间查找会议室
	public List<UsedMR> findReservedMRByAtt(ReserveMR reservemr) throws SQLException{
		return (List<UsedMR>)SqlMap.getSqlMapClient().queryForList("findRservedMRByAtt",reservemr);
	}

}
