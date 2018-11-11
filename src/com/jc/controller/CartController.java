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
	 * 获取购物车
	 * @param session
	 * @return
	 */
	@RequestMapping("getCart")
	public Cart getCart(HttpSession session) throws Exception {
		
		Cart cart = (Cart) session.getAttribute("cart");
		//判断购物车是否为空，空的话则新建一个购物车
		if (cart == null) {
			cart = new Cart();
			//添加到session中
			session.setAttribute("cart", cart);
		}
		return cart;
	}
	
	/**
	 * 添加商品到购物车
	 * @param goods_id
	 * @param orderItem_count
	 * @param session
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("add")
	public String add(Integer goods_id,Integer orderItem_count,HttpSession session,Model model) throws Exception {
		
		//通过id获取商品
		Goods goods = this.goodsService.getGoods(goods_id);
		
		//组装到订单项中
		CartItem cartItem = new CartItem(goods, orderItem_count);
		
		//添加到购物车
		Cart cart = getCart(session);
		cart.add2Cart(cartItem);
		
		return "redirect:/toCart.action";
	}
	
	/**
	 * 从购物车中移除指定商品
	 * @param goods_id
	 * @param session
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("remove")
	public String remove(Integer goods_id,HttpSession session,Model model) throws Exception {
		
		//删除指定购物车项
		Cart cart = getCart(session);
		cart.removeFromCart(goods_id);
		
		return "redirect:/toCart.action";
	}
	
}
