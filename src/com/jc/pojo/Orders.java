package com.jc.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

@SuppressWarnings("serial")
public class Orders implements Serializable{

	private String orders_id;        //订单id
	private Double orders_total;     //订单总计
	private Integer orders_state;    //订单状态（0：未支付，1：已支付）
	private Date orders_createtime;  //订单生成时间
	private String user_code;        //订单所属用户账号
	private String user_telephone;   //订单所属用户联系方式
	private String user_address;     //订单所属用户收货地址
	
	private User user;               //订单所属用户
	private List<OrderItem> items = new LinkedList<>();  //包含哪些订单项
	
	public String getOrders_id() {
		return orders_id;
	}
	public void setOrders_id(String orders_id) {
		this.orders_id = orders_id;
	}
	public Double getOrders_total() {
		return orders_total;
	}
	public void setOrders_total(Double orders_total) {
		this.orders_total = orders_total;
	}
	public Integer getOrders_state() {
		return orders_state;
	}
	public void setOrders_state(Integer orders_state) {
		this.orders_state = orders_state;
	}
	public Date getOrders_createtime() {
		return orders_createtime;
	}
	public void setOrders_createtime(Date orders_createtime) {
		this.orders_createtime = orders_createtime;
	}
	public String getUser_code() {
		return user_code;
	}
	public void setUser_code(String user_code) {
		this.user_code = user_code;
	}
	public String getUser_telephone() {
		return user_telephone;
	}
	public void setUser_telephone(String user_telephone) {
		this.user_telephone = user_telephone;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<OrderItem> getItems() {
		return items;
	}
	public void setItems(List<OrderItem> items) {
		this.items = items;
	}
	
	
}
