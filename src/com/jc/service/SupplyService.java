package com.jc.service;

import com.jc.pojo.Supply;
import com.jc.utils.Page;

public interface SupplyService {

	/**
	 * ��ѯ��Ӧ��Ʒ�б�
	 * @param page
	 * @param size
	 * @return
	 */
	Page<Supply> getSupplyList(Integer page,Integer size);
	
}
