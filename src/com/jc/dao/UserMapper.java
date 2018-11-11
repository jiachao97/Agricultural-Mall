package com.jc.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jc.pojo.Admin;
import com.jc.pojo.User;

public interface UserMapper {
	
	//用户登陆操作，查询用户
	@Select("select * from user where user_code=#{user_code} and user_password=#{user_password}")
	User getUserByCodeAndPassword(@Param("user_code")String user_code,@Param("user_password")String user_password);
	
	//管理员登陆操作，查询用户
	@Select("select * from admin where admin_code=#{admin_code} and admin_password=#{admin_password}")
	Admin getAdminByCodeAndPassword(@Param("admin_code")String admin_code,@Param("admin_password")String admin_password);

	//用户注册操作，查询user_code是否已注册
	User getUserByCode(String user_code);
	//用户注册操作，增加用户
	void addUser(User user);
}
