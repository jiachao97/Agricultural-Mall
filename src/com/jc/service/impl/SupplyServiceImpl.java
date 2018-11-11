package com.jc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jc.dao.SupplyMapper;
import com.jc.pojo.Supply;
import com.jc.service.SupplyService;
import com.jc.utils.Page;

@Service
public class SupplyServiceImpl implements SupplyService {

	@Autowired
	private SupplyMapper supplyMapper;
	
	@Override
	public Page<Supply> getSupplyList(Integer page, Integer size) {

		Supply supply = new Supply();
		
		//��ѯʱ����ʼ����(��ǰҳ-1 * ÿҳ��ʾ����)
		supply.setStart((page-1) * size);
		supply.setSize(size);
		
		//��ѯ��Ӧ��Ʒ�б�
		List<Supply> supplyList = this.supplyMapper.getSupplyList(supply);
		//��ѯ��Ӧ��Ʒ�ܼ�¼��
		Integer count = this.supplyMapper.getSupplyListCount(supply);
		
		//����Page���󷵻�
		Page<Supply> supplyPage = new Page<>();
		supplyPage.setPage(page);         //��ǰҳ
		supplyPage.setSize(size);         //ÿҳ��ʾ����
		supplyPage.setTotal(count);       //�ܼ�¼��
		supplyPage.setRows(supplyList);   //�����б�
		
		return supplyPage;
	}

}
