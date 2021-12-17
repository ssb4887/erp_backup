package com.erp.vo;

public class Department {
	private int 			dept_num;
	private String 	dept_name;
	private String 	dept_tel;
	
	public Department() {}

	public Department(int dept_num, String dept_name, String dept_tel) {
		this.dept_num = dept_num;
		this.dept_name = dept_name;
		this.dept_tel = dept_tel;
	}

	public int getDept_num() {
		return dept_num;
	}

	public void setDept_num(int dept_num) {
		this.dept_num = dept_num;
	}

	public String getDept_name() {
		return dept_name;
	}

	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}

	public String getDept_tel() {
		return dept_tel;
	}

	public void setDept_tel(String dept_tel) {
		this.dept_tel = dept_tel;
	}

}
