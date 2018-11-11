package com.jc.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

@SuppressWarnings("serial")
public class Orders implements Serializable{

	private String orders_id;        //����id
	private Double orders_total;     //�����ܼ�
	private Integer orders_state;    //����״̬��0��δ֧����1����֧����
	private Date orders_createtime;  //��������ʱ��
	private String user_code;        //���������û��˺�
	private String user_telephone;   //���������û���ϵ��ʽ
	private String user_address;     //���������û��ջ���ַ
	
	private User user;               //���������û�
	private List<OrderItem> items = new LinkedList<>();  //������Щ������
	
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
