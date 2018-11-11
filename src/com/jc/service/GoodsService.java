package com.jc.service;

import java.util.List;

import com.jc.pojo.Category;
import com.jc.pojo.Goods;

public interface GoodsService {
	
	//根据id查询商品
	Goods getGoods(Integer goods_id);
	
	//根据商品分类id查询商品列表 
	List<Goods> recommend(Integer cate_id);
	
	//查询所有商品分类
	List<Category> getCategory();
	
	//后台删除商品
	void delGoodsById(Integer goods_id);
	
	void addGoods(Goods goods);
	
	void updateGoods(Goods goods);
}
