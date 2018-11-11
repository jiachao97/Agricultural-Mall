package com.jc.pojo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Category implements Serializable{

	private Integer cate_id;   //商品分类
	private String cate_name;  //商品分类名称
	
	public Integer getCate_id() {
		return cate_id;
	}
	public void setCate_id(Integer cate_id) {
		this.cate_id = cate_id;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	
	
}
