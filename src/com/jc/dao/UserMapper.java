package com.jc.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jc.pojo.Admin;
import com.jc.pojo.User;

public interface UserMapper {
	
	//�û���½��������ѯ�û�
	@Select("select * from user where user_code=#{user_code} and user_password=#{user_password}")
	User getUserByCodeAndPassword(@Param("user_code")String user_code,@Param("user_password")String user_password);
	
	//����Ա��½��������ѯ�û�
	@Select("select * from admin where admin_code=#{admin_code} and admin_password=#{admin_password}")
	Admin getAdminByCodeAndPassword(@Param("admin_code")String admin_code,@Param("admin_password")String admin_password);

	//�û�ע���������ѯuser_code�Ƿ���ע��
	User getUserByCode(String user_code);
	//�û�ע������������û�
	void addUser(User user);
}
