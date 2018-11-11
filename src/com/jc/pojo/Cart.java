package com.jc.pojo;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

@SuppressWarnings("serial")
public class Cart implements Serializable{

	//使用map来删除单个购物车项    key:商品的id   CartItem:购物车项
	private Map<Integer,CartItem> map = new LinkedHashMap<>();
	
	private Double orders_total=0.0;  //购物车总计
	
	/**
	 * 获取所有的购物车项
	 * @return
	 */
	public Collection<CartItem> getItems() {
		return map.values();
	}
	
	/**
	 * 添加购物车项到购物车中
	 * @param items
	 */
	public void add2Cart(CartItem items) {
		
		//获取商品id，先判断购物车中有无该商品
		Integer goods_id = items.getGoods().getGoods_id();
		
		if(map.containsKey(goods_id)) {
			//有，设置该商品的购买数量（之前的购买数量+现在的购买数量）
			CartItem ci = map.get(goods_id); //先获取该商品的购物车项，从购物车项中获取该商品数量
			ci.setOrderItem_count(ci.getOrderItem_count()+items.getOrderItem_count());
		} else {
			//没有，直接将购物车项添加进去
			map.put(goods_id, items);
		}
		
		//添加后，更新订单总计
		orders_total += items.getOrderItem_subtotal();
	}
	
	/**
	 * 从购物车中删除指定购物车项
	 * @param orders_id
	 */
	public void removeFromCart(Integer goods_id) {
		
		//从购物车项中移除
		CartItem items = map.remove(goods_id);
		
		//修改订单总计
		orders_total -= items.getOrderItem_subtotal();
	}
	
	/**
	 * 清空购物车
	 */
	public void clearCart() {
		
		//置空购物车项
		map.clear();
		//订单总计归零
		orders_total = 0.0;
	}

	public Map<Integer, CartItem> getMap() {
		return map;
	}

	public void setMap(Map<Integer, CartItem> map) {
		this.map = map;
	}

	public Double getOrders_total() {
		return orders_total;
	}

	public void setOrders_total(Double orders_total) {
		this.orders_total = orders_total;
	}
	
	
}
