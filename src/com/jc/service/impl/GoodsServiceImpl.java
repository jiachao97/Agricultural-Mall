package com.jc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jc.dao.GoodsMapper;
import com.jc.pojo.Category;
import com.jc.pojo.Goods;
import com.jc.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	private GoodsMapper goodsMapper;

	/**
	 * ����id��ѯ��Ʒ
	 */
	@Override
	public Goods getGoods(Integer goods_id) {

		Goods goods = this.goodsMapper.getGoodsById(goods_id);
		return goods;
	}

	/**
	 * ������Ʒ����id��ѯ��Ʒ�б� 
	 */
	@Override
	public List<Goods> recommend(Integer cate_id) {

		List<Goods> recommendList = this.goodsMapper.getGoodsByCateId(cate_id);
		return recommendList;
	}

	/**
	 * ��ѯ������Ʒ����
	 */
	@Override
	public List<Category> getCategory() {

		List<Category> categoryList = this.goodsMapper.getCategory();
		return categoryList;
	}

	@Override
	public void delGoodsById(Integer goods_id) {

		this.goodsMapper.delGoodsById(goods_id);
	}

	@Override
	public void addGoods(Goods goods) {

		this.addGoods(goods);
	}

	@Override
	public void updateGoods(Goods goods) {

		this.goodsMapper.updateGoods(goods);
	}
	
	

}
