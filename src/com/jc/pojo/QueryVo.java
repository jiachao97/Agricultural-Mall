package com.jc.pojo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class QueryVo implements Serializable{

	private String orderItem_id;        //������id
	private Integer goods_id;          //�������е�����Ʒid
	private String goods_name;		   //�������е�����Ʒ����
	private Integer orderItem_count;   //�������е�����Ʒ������
	private Double orderItem_subtotal; //�������е�����ƷС��
	public String getOrderItem_id() {
		return orderItem_id;
	}
	public void setOrderItem_id(String orderItem_id) {
		this.orderItem_id = orderItem_id;
	}
	public Integer getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(Integer goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
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
	
	
}
