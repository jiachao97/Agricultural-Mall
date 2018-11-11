package com.jc.service;

import com.jc.pojo.Supply;
import com.jc.utils.Page;

public interface SupplyService {

	/**
	 * 查询供应商品列表
	 * @param page
	 * @param size
	 * @return
	 */
	Page<Supply> getSupplyList(Integer page,Integer size);
	
}
