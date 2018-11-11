package com.jc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jc.dao.OrderMapper;
import com.jc.pojo.OrderItem;
import com.jc.pojo.Orders;
import com.jc.pojo.QueryVo;
import com.jc.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;
	
	@Override
	public void add(Orders orders) {

		//�򶩵������һ������
		this.orderMapper.add2Orders(orders);
		
		//�򶩵�������Ӷ�������
		for (OrderItem orderItem : orders.getItems()) {
			this.orderMapper.add2OrderItem(orderItem);
		}
	}

	/**
	 * ��̨�鿴���ж���
	 */
	@Override
	public List<Orders> getOrders() {

		List<Orders> orderList = this.orderMapper.getOrders();
		return orderList;
	}

	/**
	 * ��̨�鿴���ж�����
	 */
	@Override
	public QueryVo getOrderDetail(String orders_id) {

		QueryVo vo = this.orderMapper.getOrderDetail(orders_id);
		return vo;
	}

}
