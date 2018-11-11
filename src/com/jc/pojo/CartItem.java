package com.jc.pojo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class CartItem implements Serializable{

	private Goods goods;                    //������Щ��Ʒ��Ʒ
	private Integer orderItem_count;        //�������е�����Ʒ������
	@SuppressWarnings("unused")
	private Double orderItem_subtotal=0.0;  //�������е�����ƷС��
	
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Integer getOrderItem_count() {
		return orderItem_count;
	}
	public void setOrderItem_count(Integer orderItem_count) {
		this.orderItem_count = orderItem_count;
	}
	public Double getOrderItem_subtotal() {
		return goods.getGoods_current_price()*orderItem_count;   //С��=��Ʒ�ּ�*�������е�����Ʒ������
	}
	public void setOrderItem_subtotal(Double orderItem_subtotal) {
		this.orderItem_subtotal = orderItem_subtotal;
	}
	
	public CartItem(Goods goods, Integer orderItem_count) {
		this.goods = goods;
		this.orderItem_count = orderItem_count;
	}
	public CartItem(){}
			
}
