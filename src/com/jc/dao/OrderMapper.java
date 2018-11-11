package com.jc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.jc.pojo.OrderItem;
import com.jc.pojo.Orders;
import com.jc.pojo.QueryVo;

public interface OrderMapper {

	//添加一条订单
	@Insert("insert into orders values(#{orders_id},#{orders_total},#{orders_state},#{orders_createtime},#{user_code},#{user_telephone},#{user_address})")
	void add2Orders(Orders orders);
	
	//添加一条订单项
	@Insert("insert into orderitem values(#{orderItem_id},#{orderItem_count},#{orderItem_subtotal},#{goods.goods_id},#{orders.orders_id})")
	void add2OrderItem(OrderItem orderItem);
	
	//后台查看所有订单
	@Select("select * from orders")
	List<Orders> getOrders();
	
	//后台查看所有订单项
	@Select("select orderItem_id,oi.goods_id,goods_name,orderItem_count,orderItem_subtotal from orderitem oi,goods g where oi.goods_id=g.goods_id and oi.orders_id=#{oi.orders_id}")
	QueryVo getOrderDetail(String orders_id);
}
