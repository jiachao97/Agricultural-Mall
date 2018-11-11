package com.jc.service;

import com.jc.pojo.Admin;
import com.jc.pojo.User;

public interface UserService {

	//�û���½��������ѯ�û� 
	User checkLogin(String user_code,String user_password);
	//����Ա��½��������ѯ�û�
	Admin checkAdminLogin(String admin_code,String admin_password);
	
	//�û�ע���������ѯuser_code�Ƿ���ע��
	public boolean isExist(String user_code);
	
	//�û�ע������������û�
	void register(String user_code,String user_name,String user_password,
			String user_telephone,String user_address);
	
}
