package com.erp.vo;

public class Sales {
	private int sales_num ;
	private String user_name;
	private String user_num ;
	private String clients_num;
	private String pro_num;
	private int sales_count;
	private int sales_amount;
	private String sales_date;
	private String sales_note;
	
	public Sales() {}

	public Sales(int sales_num, String user_name, String user_num, String clients_num, String pro_num, int sales_count,
			int sales_amount, String sales_date, String sales_note) {
		this.sales_num = sales_num;
		this.user_name = user_name;
		this.user_num = user_num;
		this.clients_num = clients_num;
		this.pro_num = pro_num;
		this.sales_count = sales_count;
		this.sales_amount = sales_amount;
		this.sales_date = sales_date;
		this.sales_note = sales_note;
	}

	public int getSales_num() {
		return sales_num;
	}

	public void setSales_num(int sales_num) {
		this.sales_num = sales_num;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_num() {
		return user_num;
	}

	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}

	public String getClients_num() {
		return clients_num;
	}

	public void setClients_num(String clients_num) {
		this.clients_num = clients_num;
	}

	public String getPro_num() {
		return pro_num;
	}

	public void setPro_num(String pro_num) {
		this.pro_num = pro_num;
	}

	public int getSales_count() {
		return sales_count;
	}

	public void setSales_count(int sales_count) {
		this.sales_count = sales_count;
	}

	public int getSales_amount() {
		return sales_amount;
	}

	public void setSales_amount(int sales_amount) {
		this.sales_amount = sales_amount;
	}

	public String getSales_date() {
		return sales_date;
	}

	public void setSales_date(String sales_date) {
		this.sales_date = sales_date;
	}

	public String getSales_note() {
		return sales_note;
	}

	public void setSales_note(String sales_note) {
		this.sales_note = sales_note;
	}
	
}
