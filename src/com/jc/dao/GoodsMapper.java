package com.jc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.jc.pojo.Category;
import com.jc.pojo.Goods;

public interface GoodsMapper {
	
	//根据id查询商品
	Goods getGoodsById(Integer goods_id);
	
	//根据商品分类id查询商品列表 
	List<Goods> getGoodsByCateId(Integer cate_id);
	
	//查询所有商品分类
	@Select("select * from category")
	List<Category> getCategory();
	
	//后台删除商品
	void delGoodsById(Integer goods_id);
	
	void addGoods(Goods goods);
	
	void updateGoods(Goods goods);
	
}
