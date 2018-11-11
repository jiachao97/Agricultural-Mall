package com.jc.pojo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Supply implements Serializable{

	private Integer sup_id;         //供应id
  	private String sup_name;        //供应商品名称
  	private String sup_images;      //供应商品图片路径
  	private String sup_address;     //供应人地址
	private String sup_explain;     //供应商品说明
	private String sup_telephone;   //供应人联系方式
	private String sup_user;        //供应人
	private String sup_number;      //可供应商品数量
	private String sup_type;        //供应商品分类
	private String sup_expiry_date; //供应商品截止日期
	private Integer goods_id;       //供应商品id
	
	private Integer start;          //查询时的起始条数
	private Integer size;           //每页显示条数
	public Integer getSup_id() {
		return sup_id;
	}
	public void setSup_id(Integer sup_id) {
		this.sup_id = sup_id;
	}
	public String getSup_name() {
		return sup_name;
	}
	public void setSup_name(String sup_name) {
		this.sup_name = sup_name;
	}
	public String getSup_address() {
		return sup_address;
	}
	public void setSup_address(String sup_address) {
		this.sup_address = sup_address;
	}
	public String getSup_explain() {
		return sup_explain;
	}
	public void setSup_explain(String sup_explain) {
		this.sup_explain = sup_explain;
	}
	public String getSup_telephone() {
		return sup_telephone;
	}
	public void setSup_telephone(String sup_telephone) {
		this.sup_telephone = sup_telephone;
	}
	public String getSup_user() {
		return sup_user;
	}
	public void setSup_user(String sup_user) {
		this.sup_user = sup_user;
	}
	public String getSup_number() {
		return sup_number;
	}
	public void setSup_number(String sup_number) {
		this.sup_number = sup_number;
	}
	public String getSup_type() {
		return sup_type;
	}
	public void setSup_type(String sup_type) {
		this.sup_type = sup_type;
	}
	public String getSup_expiry_date() {
		return sup_expiry_date;
	}
	public void setSup_expiry_date(String sup_expiry_date) {
		this.sup_expiry_date = sup_expiry_date;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	public String getSup_images() {
		return sup_images;
	}
	public void setSup_images(String sup_images) {
		this.sup_images = sup_images;
	}
	public Integer getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(Integer goods_id) {
		this.goods_id = goods_id;
	}
	
	
}
