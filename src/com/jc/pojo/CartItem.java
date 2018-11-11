package com.jc.pojo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class CartItem implements Serializable{

	private Goods goods;                    //包含哪些商品商品
	private Integer orderItem_count;        //订单项中单种商品的数量
	@SuppressWarnings("unused")
	private Double orderItem_subtotal=0.0;  //订单项中单种商品小计
	
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
		return goods.getGoods_current_price()*orderItem_count;   //小计=商品现价*订单项中单种商品的数量
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
