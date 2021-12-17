package com.erp.vo;

public class Orders {
	private String 	orders_num;
	private String 	pro_num;
	private String 	orders_date;
	private String 	rec_date;
	private int 			orders_count;
	private int 			orders_amount;
	private String 	supp_id;
	
	public Orders() {}

	public Orders(String orders_num, String pro_num, String orders_date, String rec_date, int orders_count,
			int orders_amount, String supp_id) {
		this.orders_num = orders_num;
		this.pro_num = pro_num;
		this.orders_date = orders_date;
		this.rec_date = rec_date;
		this.orders_count = orders_count;
		this.orders_amount = orders_amount;
		this.supp_id = supp_id;
	}

	public String getOrders_num() {
		return orders_num;
	}

	public void setOrders_num(String orders_num) {
		this.orders_num = orders_num;
	}

	public String getPro_num() {
		return pro_num;
	}

	public void setPro_num(String pro_num) {
		this.pro_num = pro_num;
	}

	public String getOrders_date() {
		return orders_date;
	}

	public void setOrders_date(String orders_date) {
		this.orders_date = orders_date;
	}

	public String getRec_date() {
		return rec_date;
	}

	public void setRec_date(String rec_date) {
		this.rec_date = rec_date;
	}

	public int getOrders_count() {
		return orders_count;
	}

	public void setOrders_count(int orders_count) {
		this.orders_count = orders_count;
	}

	public int getOrders_amount() {
		return orders_amount;
	}

	public void setOrders_amount(int orders_amount) {
		this.orders_amount = orders_amount;
	}

	public String getSupp_id() {
		return supp_id;
	}

	public void setSupp_id(String supp_id) {
		this.supp_id = supp_id;
	}
	
}
