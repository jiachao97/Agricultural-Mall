package com.jc.pojo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class OrderItem implements Serializable{

	private String orderItem_id;       //订单项id
	private Integer orderItem_count;   //订单项中单种商品的数量
	private Double orderItem_subtotal; //订单项中单种商品小计
	
	private Goods goods;               //包含哪些商品
	private Orders orders;             //属于哪个订单
	
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
