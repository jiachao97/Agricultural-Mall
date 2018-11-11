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
		
		//1.��װ����
		Orders orders = new Orders();
		
		//1.1����id
		orders.setOrders_id(UUID.randomUUID().toString().replaceAll("-", ""));
		
		//1.2�����ܼ�=���ﳵ�ܼ�
		//��session�л�ȡCart
		Cart cart = (Cart) session.getAttribute("cart");
		orders.setOrders_total(cart.getOrders_total());
		
		//1.3����״̬
		orders.setOrders_state(0);
		
		//1.4��������ʱ��
		orders.setOrders_createtime(new Date());
		
		//1.5���������û��˺�
		orders.setUser_code(user.getUser_code());
		
		//1.6���������û���ϵ��ʽ
		orders.setUser_telephone(user.getUser_telephone());
		
		//1.7���������û��ջ���ַ
		orders.setUser_address(user.getUser_address());
		
		//1.8���������ж�����
		/**
		 * �Ȼ�ȡ���еĹ��ﳵ�� CartItem
		 * �������ﳵ����װ�ɶ�����OrderItem
		 * ����������ӵ�������������
		 */
		for (CartItem cartItem : cart.getItems()) {

			OrderItem orderItem = new OrderItem();
			//������id
			orderItem.setOrderItem_id(UUID.randomUUID().toString().replaceAll("-", ""));
			
			//�������е�����Ʒ������
			orderItem.setOrderItem_count(cartItem.getOrderItem_count());
			
			//�������е�����ƷС��
			orderItem.setOrderItem_subtotal(cartItem.getOrderItem_subtotal());
			
			//������Щ��Ʒ
			orderItem.setGoods(cartItem.getGoods());
			
			//�����ĸ�����
			orderItem.setOrders(orders);
			
			//��Ӷ��������������
			orders.getItems().add(orderItem);
		}
		
		//1.9���������û�
		
		orders.setUser(user);
		
		//2.����service��Ӷ���
		this.orderService.add(orders);
		
		//3.��orders����request���У�����ת��
		request.setAttribute("orders", orders);
		
		//4.��չ��ﳵ
		session.removeAttribute("cart");
		
		return "order";
	}
	
}
