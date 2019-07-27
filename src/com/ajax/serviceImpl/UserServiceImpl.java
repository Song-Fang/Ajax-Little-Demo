package com.ajax.serviceImpl;

import com.ajax.dao.UserDao;
import com.ajax.daoimpl.UserDaoImpl;
import com.ajax.domain.User;
import com.ajax.service.UserService;

public class UserServiceImpl implements UserService{
	//获取Dao层对象
	UserDao ud = new UserDaoImpl();
	@Override
	public User getUserInfoService(String name) {
		// TODO Auto-generated method stub
		return ud.getUserInfo(name);
	}

}
