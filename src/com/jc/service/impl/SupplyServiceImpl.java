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
		
		//查询时的起始条数(当前页-1 * 每页显示条数)
		supply.setStart((page-1) * size);
		supply.setSize(size);
		
		//查询供应商品列表
		List<Supply> supplyList = this.supplyMapper.getSupplyList(supply);
		//查询供应商品总记录数
		Integer count = this.supplyMapper.getSupplyListCount(supply);
		
		//创建Page对象返回
		Page<Supply> supplyPage = new Page<>();
		supplyPage.setPage(page);         //当前页
		supplyPage.setSize(size);         //每页显示条数
		supplyPage.setTotal(count);       //总记录数
		supplyPage.setRows(supplyList);   //数据列表
		
		return supplyPage;
	}

}
