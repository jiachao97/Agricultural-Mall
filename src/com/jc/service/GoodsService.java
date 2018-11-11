package com.jc.service;

import java.util.List;

import com.jc.pojo.Category;
import com.jc.pojo.Goods;

public interface GoodsService {
	
	//����id��ѯ��Ʒ
	Goods getGoods(Integer goods_id);
	
	//������Ʒ����id��ѯ��Ʒ�б� 
	List<Goods> recommend(Integer cate_id);
	
	//��ѯ������Ʒ����
	List<Category> getCategory();
	
	//��̨ɾ����Ʒ
	void delGoodsById(Integer goods_id);
	
	void addGoods(Goods goods);
	
	void updateGoods(Goods goods);
}
