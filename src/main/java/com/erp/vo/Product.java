package com.erp.vo;

public class Product {
	private String 	pro_num;
	private String 	pro_name;
	private String 	pro_color;
	private int 			pro_count;
	private String 	pro_note;
	
	public Product() {}

	public Product(String pro_num, String pro_name, String pro_color, int pro_count, String pro_note) {
		this.pro_num = pro_num;
		this.pro_name = pro_name;
		this.pro_color = pro_color;
		this.pro_count = pro_count;
		this.pro_note = pro_note;
	}

	public String getPro_num() {
		return pro_num;
	}

	public void setPro_num(String pro_num) {
		this.pro_num = pro_num;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getPro_color() {
		return pro_color;
	}

	public void setPro_color(String pro_color) {
		this.pro_color = pro_color;
	}

	public int getPro_count() {
		return pro_count;
	}

	public void setPro_count(int pro_count) {
		this.pro_count = pro_count;
	}

	public String getPro_note() {
		return pro_note;
	}

	public void setPro_note(String pro_note) {
		this.pro_note = pro_note;
	}
	
}
