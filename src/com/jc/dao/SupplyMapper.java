package com.jc.dao;

import java.util.List;

import com.jc.pojo.Supply;

public interface SupplyMapper {

	//��ѯ��Ӧ��Ʒ��Ϣ
	List<Supply> getSupplyList(Supply supply);
	
	//��ѯ��Ӧ��Ʒ�ܼ�¼��
	Integer getSupplyListCount(Supply supply);
}
