package com.jc.controller;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jc.pojo.Cart;
import com.jc.pojo.CartItem;
import com.jc.pojo.OrderItem;
import com.jc.pojo.Orders;
import com.jc.pojo.User;
import com.jc.service.OrderService;

@Controller
@RequestMapping("orders")
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	@RequestMapping("add")
	public String add(HttpServletRequest request,HttpSession session,Model model) throws Exception {
		
		User user = (User) session.getAttribute("user");
		
		//1.封装数据
		Orders orders = new Orders();
		
		//1.1订单id
		orders.setOrders_id(UUID.randomUUID().toString().replaceAll("-", ""));
		
		//1.2订单总计=购物车总计
		//从session中获取Cart
		Cart cart = (Cart) session.getAttribute("cart");
		orders.setOrders_total(cart.getOrders_total());
		
		//1.3订单状态
		orders.setOrders_state(0);
		
		//1.4订单生成时间
		orders.setOrders_createtime(new Date());
		
		//1.5订单所属用户账号
		orders.setUser_code(user.getUser_code());
		
		//1.6订单所属用户联系方式
		orders.setUser_telephone(user.getUser_telephone());
		
		//1.7订单所属用户收货地址
		orders.setUser_address(user.getUser_address());
		
		//1.8订单的所有订单项
		/**
		 * 先获取所有的购物车项 CartItem
		 * 遍历购物车项组装成订单项OrderItem
		 * 将订单项添加到订单啊集合中
		 */
		for (CartItem cartItem : cart.getItems()) {

			OrderItem orderItem = new OrderItem();
			//订单项id
			orderItem.setOrderItem_id(UUID.randomUUID().toString().replaceAll("-", ""));
			
			//订单项中单种商品的数量
			orderItem.setOrderItem_count(cartItem.getOrderItem_count());
			
			//订单项中单种商品小计
			orderItem.setOrderItem_subtotal(cartItem.getOrderItem_subtotal());
			
			//包含哪些商品
			orderItem.setGoods(cartItem.getGoods());
			
			//属于哪个订单
			orderItem.setOrders(orders);
			
			//添加订单项到订单集合中
			orders.getItems().add(orderItem);
		}
		
		//1.9订单所属用户
		
		orders.setUser(user);
		
		//2.调用service添加订单
		this.orderService.add(orders);
		
		//3.将orders放入request域中，请求转发
		request.setAttribute("orders", orders);
		
		//4.清空购物车
		session.removeAttribute("cart");
		
		return "order";
	}
	
}
