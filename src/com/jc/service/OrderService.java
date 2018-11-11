package com.jc.service;

import java.util.List;

import com.jc.pojo.Orders;
import com.jc.pojo.QueryVo;

public interface OrderService {

	//���һ������
	void add(Orders orders);
	
	//��̨�鿴���ж���
	List<Orders> getOrders();
	
	//��̨�鿴���ж�����
	QueryVo getOrderDetail(String orders_id);
	
}
