package com.jc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.jc.pojo.Category;
import com.jc.pojo.Goods;

public interface GoodsMapper {
	
	//����id��ѯ��Ʒ
	Goods getGoodsById(Integer goods_id);
	
	//������Ʒ����id��ѯ��Ʒ�б� 
	List<Goods> getGoodsByCateId(Integer cate_id);
	
	//��ѯ������Ʒ����
	@Select("select * from category")
	List<Category> getCategory();
	
	//��̨ɾ����Ʒ
	void delGoodsById(Integer goods_id);
	
	void addGoods(Goods goods);
	
	void updateGoods(Goods goods);
	
}
