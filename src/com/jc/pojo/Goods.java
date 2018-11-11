package com.jc.pojo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Goods implements Serializable{

	private Integer goods_id;             //商品id
	private String goods_name;            //商品名称
	private Double goods_original_price;  //原价
	private Double goods_current_price;   //现价
	private Integer goods_sales_volume;   //累计销量
	private String goods_images;          //商品图片路径
	
	private Category category;            //属于那种分类

	public Integer getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(Integer goods_id) {
		this.goods_id = goods_id;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public Double getGoods_original_price() {
		return goods_original_price;
	}

	public void setGoods_original_price(Double goods_original_price) {
		this.goods_original_price = goods_original_price;
	}

	public Double getGoods_current_price() {
		return goods_current_price;
	}

	public void setGoods_current_price(Double goods_current_price) {
		this.goods_current_price = goods_current_price;
	}

	public Integer getGoods_sales_volume() {
		return goods_sales_volume;
	}

	public void setGoods_sales_volume(Integer goods_sales_volume) {
		this.goods_sales_volume = goods_sales_volume;
	}

	public String getGoods_images() {
		return goods_images;
	}

	public void setGoods_images(String goods_images) {
		this.goods_images = goods_images;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	
}
