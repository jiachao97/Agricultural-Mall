package com.jc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jc.pojo.Cart;
import com.jc.pojo.CartItem;
import com.jc.pojo.Goods;
import com.jc.service.GoodsService;

@Controller
@RequestMapping("cart")
public class CartController {

	@Autowired
	private GoodsService goodsService;
	
	/**
	 * ��ȡ���ﳵ
	 * @param session
	 * @return
	 */
	@RequestMapping("getCart")
	public Cart getCart(HttpSession session) throws Exception {
		
		Cart cart = (Cart) session.getAttribute("cart");
		//�жϹ��ﳵ�Ƿ�Ϊ�գ��յĻ����½�һ�����ﳵ
		if (cart == null) {
			cart = new Cart();
			//��ӵ�session��
			session.setAttribute("cart", cart);
		}
		return cart;
	}
	
	/**
	 * �����Ʒ�����ﳵ
	 * @param goods_id
	 * @param orderItem_count
	 * @param session
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("add")
	public String add(Integer goods_id,Integer orderItem_count,HttpSession session,Model model) throws Exception {
		
		//ͨ��id��ȡ��Ʒ
		Goods goods = this.goodsService.getGoods(goods_id);
		
		//��װ����������
		CartItem cartItem = new CartItem(goods, orderItem_count);
		
		//��ӵ����ﳵ
		Cart cart = getCart(session);
		cart.add2Cart(cartItem);
		
		return "redirect:/toCart.action";
	}
	
	/**
	 * �ӹ��ﳵ���Ƴ�ָ����Ʒ
	 * @param goods_id
	 * @param session
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("remove")
	public String remove(Integer goods_id,HttpSession session,Model model) throws Exception {
		
		//ɾ��ָ�����ﳵ��
		Cart cart = getCart(session);
		cart.removeFromCart(goods_id);
		
		return "redirect:/toCart.action";
	}
	
}
