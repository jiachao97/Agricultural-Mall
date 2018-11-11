package com.jc.pojo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class OrderItem implements Serializable{

	private String orderItem_id;       //������id
	private Integer orderItem_count;   //�������е�����Ʒ������
	private Double orderItem_subtotal; //�������е�����ƷС��
	
	private Goods goods;               //������Щ��Ʒ
	private Orders orders;             //�����ĸ�����
	
	public String getOrderItem_id() {
		return orderItem_id;
	}
	public void setOrderItem_id(String orderItem_id) {
		this.orderItem_id = orderItem_id;
	}
	public Integer getOrderItem_count() {
		return orderItem_count;
	}
	public void setOrderItem_count(Integer orderItem_count) {
		this.orderItem_count = orderItem_count;
	}
	public Double getOrderItem_subtotal() {
		return orderItem_subtotal;
	}
	public void setOrderItem_subtotal(Double orderItem_subtotal) {
		this.orderItem_subtotal = orderItem_subtotal;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	
	
}
