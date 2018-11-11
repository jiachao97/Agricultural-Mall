package com.jc.pojo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Supply implements Serializable{

	private Integer sup_id;         //��Ӧid
  	private String sup_name;        //��Ӧ��Ʒ����
  	private String sup_images;      //��Ӧ��ƷͼƬ·��
  	private String sup_address;     //��Ӧ�˵�ַ
	private String sup_explain;     //��Ӧ��Ʒ˵��
	private String sup_telephone;   //��Ӧ����ϵ��ʽ
	private String sup_user;        //��Ӧ��
	private String sup_number;      //�ɹ�Ӧ��Ʒ����
	private String sup_type;        //��Ӧ��Ʒ����
	private String sup_expiry_date; //��Ӧ��Ʒ��ֹ����
	private Integer goods_id;       //��Ӧ��Ʒid
	
	private Integer start;          //��ѯʱ����ʼ����
	private Integer size;           //ÿҳ��ʾ����
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
