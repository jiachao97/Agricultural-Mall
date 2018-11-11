package com.jc.service;

import com.jc.pojo.Admin;
import com.jc.pojo.User;

public interface UserService {

	//用户登陆操作，查询用户 
	User checkLogin(String user_code,String user_password);
	//管理员登陆操作，查询用户
	Admin checkAdminLogin(String admin_code,String admin_password);
	
	//用户注册操作，查询user_code是否已注册
	public boolean isExist(String user_code);
	
	//用户注册操作，增加用户
	void register(String user_code,String user_name,String user_password,
			String user_telephone,String user_address);
	
}
