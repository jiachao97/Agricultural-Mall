package com.jc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jc.dao.UserMapper;
import com.jc.pojo.Admin;
import com.jc.pojo.User;
import com.jc.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	/**
	 * 用户登陆操作，查询用户
	 */
	@Override
	public User checkLogin(String user_code, String user_password) {
		
		User user = this.userMapper.getUserByCodeAndPassword(user_code, user_password);
		return user;
	}

	//用户注册操作，查询user_code是否已注册
	@Override
	public boolean isExist(String user_code) {

		if(this.userMapper.getUserByCode(user_code) == null) {
			return false;
		} else {
			return true;
		}
	}
	
	/**
	 * 用户注册操作，增加用户
	 */
	@Override
	public void register(String user_code, String user_name, String user_password,
			String user_telephone, String user_address) {

		User user = new User();
		user.setUser_id(null);
		user.setUser_code(user_code);
		user.setUser_name(user_name);
		user.setUser_password(user_password);
		user.setUser_telephone(user_telephone);
		user.setUser_address(user_address);
		
		this.userMapper.addUser(user);
	}

	/**
	 * 管理员登陆操作
	 */
	@Override
	public Admin checkAdminLogin(String admin_code, String admin_password) {

		Admin admin = this.userMapper.getAdminByCodeAndPassword(admin_code, admin_password);
		return admin;
	}

}
