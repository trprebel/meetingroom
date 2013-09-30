package com.dao.impl;


import java.util.List;

import com.bean.User;

public class UserDao {

	//通过用户名查询信息
	public User findUserByName(String username) throws Exception {
		//System.out.println(username);
		return (User)SqlMap.getSqlMapClient().queryForObject("findUserByName",username);
	}
	//查找所有用户名
	public List<String> findAllUsername() throws Exception{
		return (List<String>)SqlMap.getSqlMapClient().queryForList("findAllUsername");
		
	}

}
