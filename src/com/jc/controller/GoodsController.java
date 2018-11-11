package com.jc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jc.pojo.Goods;
import com.jc.service.GoodsService;

@Controller
public class GoodsController {

	@Autowired
	private GoodsService goodsService;
	
	@Value("${feature.cate.id}")
	private Integer FEATURE_CATE_ID;//汉中特色推荐商品分类id
	
	/**
	 * 轮播图模块，根据id查询商品详情
	 * @param goods_id
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("goods")
	public String getGoods(Integer goods_id,Model model) throws Exception {
		
		Goods goods = this.goodsService.getGoods(goods_id);
		model.addAttribute("goods", goods);
		
		return "goods";
	}
	
	
	
}
