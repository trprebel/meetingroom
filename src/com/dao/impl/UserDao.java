package com.dao.impl;


import java.util.List;

import com.bean.User;

public class UserDao {

	//ͨ���û�����ѯ��Ϣ
	public User findUserByName(String username) throws Exception {
		//System.out.println(username);
		return (User)SqlMap.getSqlMapClient().queryForObject("findUserByName",username);
	}
	//���������û���
	public List<String> findAllUsername() throws Exception{
		return (List<String>)SqlMap.getSqlMapClient().queryForList("findAllUsername");
		
	}

}
