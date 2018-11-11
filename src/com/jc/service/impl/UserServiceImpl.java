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
	 * �û���½��������ѯ�û�
	 */
	@Override
	public User checkLogin(String user_code, String user_password) {
		
		User user = this.userMapper.getUserByCodeAndPassword(user_code, user_password);
		return user;
	}

	//�û�ע���������ѯuser_code�Ƿ���ע��
	@Override
	public boolean isExist(String user_code) {

		if(this.userMapper.getUserByCode(user_code) == null) {
			return false;
		} else {
			return true;
		}
	}
	
	/**
	 * �û�ע������������û�
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
	 * ����Ա��½����
	 */
	@Override
	public Admin checkAdminLogin(String admin_code, String admin_password) {

		Admin admin = this.userMapper.getAdminByCodeAndPassword(admin_code, admin_password);
		return admin;
	}

}
