package com.jc.service;

import java.util.List;

import com.jc.pojo.Orders;
import com.jc.pojo.QueryVo;

public interface OrderService {

	//添加一条订单
	void add(Orders orders);
	
	//后台查看所有订单
	List<Orders> getOrders();
	
	//后台查看所有订单项
	QueryVo getOrderDetail(String orders_id);
	
}
