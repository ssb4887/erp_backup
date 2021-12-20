package com.erp.vo;

public class Supplier {
	private String supp_id;
	private String supp_add;
	private String supp_tel;
	private String user_num;
	private String user_tel;
	private String supp_type;
	private String supp_note;
	
	public Supplier() {}

	public Supplier(String supp_id, String supp_add, String supp_tel, String user_num, String user_tel,
			String supp_type, String sup_note) {
		this.supp_id = supp_id;
		this.supp_add = supp_add;
		this.supp_tel = supp_tel;
		this.user_num = user_num;
		this.user_tel = user_tel;
		this.supp_type = supp_type;
		this.supp_note = sup_note;
	}

	public String getSupp_id() {
		return supp_id;
	}

	public void setSupp_id(String supp_id) {
		this.supp_id = supp_id;
	}

	public String getSupp_add() {
		return supp_add;
	}

	public void setSupp_add(String supp_add) {
		this.supp_add = supp_add;
	}

	public String getSupp_tel() {
		return supp_tel;
	}

	public void setSupp_tel(String supp_tel) {
		this.supp_tel = supp_tel;
	}

	public String getUser_num() {
		return user_num;
	}

	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	public String getSupp_type() {
		return supp_type;
	}

	public void setSupp_type(String supp_type) {
		this.supp_type = supp_type;
	}

	public String getSup_note() {
		return supp_note;
	}

	public void setSup_note(String sup_note) {
		this.supp_note = sup_note;
	}
	
}
