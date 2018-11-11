package com.jc.pojo;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

@SuppressWarnings("serial")
public class Cart implements Serializable{

	//ʹ��map��ɾ���������ﳵ��    key:��Ʒ��id   CartItem:���ﳵ��
	private Map<Integer,CartItem> map = new LinkedHashMap<>();
	
	private Double orders_total=0.0;  //���ﳵ�ܼ�
	
	/**
	 * ��ȡ���еĹ��ﳵ��
	 * @return
	 */
	public Collection<CartItem> getItems() {
		return map.values();
	}
	
	/**
	 * ��ӹ��ﳵ����ﳵ��
	 * @param items
	 */
	public void add2Cart(CartItem items) {
		
		//��ȡ��Ʒid�����жϹ��ﳵ�����޸���Ʒ
		Integer goods_id = items.getGoods().getGoods_id();
		
		if(map.containsKey(goods_id)) {
			//�У����ø���Ʒ�Ĺ���������֮ǰ�Ĺ�������+���ڵĹ���������
			CartItem ci = map.get(goods_id); //�Ȼ�ȡ����Ʒ�Ĺ��ﳵ��ӹ��ﳵ���л�ȡ����Ʒ����
			ci.setOrderItem_count(ci.getOrderItem_count()+items.getOrderItem_count());
		} else {
			//û�У�ֱ�ӽ����ﳵ����ӽ�ȥ
			map.put(goods_id, items);
		}
		
		//��Ӻ󣬸��¶����ܼ�
		orders_total += items.getOrderItem_subtotal();
	}
	
	/**
	 * �ӹ��ﳵ��ɾ��ָ�����ﳵ��
	 * @param orders_id
	 */
	public void removeFromCart(Integer goods_id) {
		
		//�ӹ��ﳵ�����Ƴ�
		CartItem items = map.remove(goods_id);
		
		//�޸Ķ����ܼ�
		orders_total -= items.getOrderItem_subtotal();
	}
	
	/**
	 * ��չ��ﳵ
	 */
	public void clearCart() {
		
		//�ÿչ��ﳵ��
		map.clear();
		//�����ܼƹ���
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
