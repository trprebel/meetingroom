package com.dao.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.bean.MeetingRoom;
import com.bean.ReserveMR;
import com.bean.UsedMR;

public class MeetingRoomDao {
	
	//����������
	public void createMR(MeetingRoom mr) throws Exception{
		SqlMap.getSqlMapClient().insert("createMR",mr);
	}
	//�������б�
	public List<MeetingRoom> findAllMR() throws Exception{
		return (List<MeetingRoom>) SqlMap.getSqlMapClient().queryForList("findAllMR");
	}
	//�޸Ļ���������
	public void modifyMR(MeetingRoom mr) throws Exception{
		SqlMap.getSqlMapClient().update("modifyMR",mr);
	}
	//Ԥ��������
	public void reserveMR(ReserveMR reservemr) throws Exception{
		SqlMap.getSqlMapClient().insert("reserveMR",reservemr);
	}
	//������Ԥ���Ļ�����
	public List<UsedMR> findUsedMR(String now) throws Exception{
		return (List<UsedMR>)SqlMap.getSqlMapClient().queryForList("findUsedMR",now);
	}
	//ȡ��Ԥ��������
	public void deleteReMR(int id) throws Exception{
		SqlMap.getSqlMapClient().delete("deleteReMR",id);
	}
	//ͨ��ʱ�������Ԥ���Ļ�����
	public List<ReserveMR> findReservedMRByTime(ReserveMR reservemr) throws Exception{
		return (List<ReserveMR>)SqlMap.getSqlMapClient().queryForList("findReservedMRByTime",reservemr);
	}
	//ͨ�������������һ�����
	public List<ReserveMR> findReservedMRByName(Map<String, String> map) throws Exception{
		return (List<ReserveMR>)SqlMap.getSqlMapClient().queryForList("findReservedMRByName",map);
	}
	//ͨ���û���������������ʱ����һ�����
	public List<UsedMR> findReservedMRByAtt(ReserveMR reservemr) throws SQLException{
		return (List<UsedMR>)SqlMap.getSqlMapClient().queryForList("findRservedMRByAtt",reservemr);
	}

}
