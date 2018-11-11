package com.jc.dao;

import java.util.List;

import com.jc.pojo.Supply;

public interface SupplyMapper {

	//查询供应商品信息
	List<Supply> getSupplyList(Supply supply);
	
	//查询供应商品总记录数
	Integer getSupplyListCount(Supply supply);
}
