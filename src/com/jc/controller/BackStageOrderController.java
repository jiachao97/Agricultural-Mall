package com.jc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jc.pojo.Orders;
import com.jc.pojo.QueryVo;
import com.jc.service.OrderService;

@Controller
@RequestMapping("backStage")
public class BackStageOrderController {

	@Autowired
	private OrderService ordervice;
	
	/**
	 * 后台查看所有订单
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("order")
	public String order(Model model) throws Exception {
		
		List<Orders> orderList = this.ordervice.getOrders();
		model.addAttribute("orderList", orderList);
		
		return "admin/order/list";
	}
	
	@RequestMapping("orderDetails")
	@ResponseBody
	public String orderDetails(@RequestBody String orders_id,Model model) throws Exception {
		
		QueryVo items = this.ordervice.getOrderDetail(orders_id);
		model.addAttribute("items", items);
		
		return "Ok";
	}
	
}
