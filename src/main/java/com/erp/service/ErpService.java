package com.erp.service;

import java.util.List;

import com.erp.vo.Department;
import com.erp.vo.Users;

public interface ErpService {
	public Users loginAction(Users users) throws Exception;
	
	public List<Department> getDeptList() throws Exception;
	public String makeUser_num(String dept_num) throws Exception;
	public Department getDepartment(String dept_num) throws Exception;
	
	public List<Users> getUsersList() throws Exception;
	
	public List<Users> searchName(String user_name) throws Exception;
}
