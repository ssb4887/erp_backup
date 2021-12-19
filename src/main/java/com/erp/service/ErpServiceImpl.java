package com.erp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.ErpDAO;
import com.erp.vo.Department;
import com.erp.vo.Users;
@Service
public class ErpServiceImpl implements ErpService {
	@Inject
	ErpDAO dao;

	@Override
	public Users loginAction(Users users) throws Exception {
		
		return dao.login(users);
	
	}

	@Override
	public List<Department> getDeptList() throws Exception {
		
		return dao.getDeptList();
	}

	@Override
	public Department getDepartment(String dept_num) throws Exception {
		
		return dao.getDepartment(dept_num);
	}

	@Override
	public String makeUser_num(String dept_num) throws Exception {
			int cnt = dao.getDeptUserCnt(dept_num);
			
													// .format(3자리, 값이 없는 자리에 0 을 붙인다. cnt : 카운터한 개수를 들고옴)
		return dept_num + "-" + String.format("%03d", cnt);
	}

	@Override
	public List<Users> getUsersList() throws Exception {
		return dao.getUsersList();
	}

	@Override
	public List<Users> searchName(String user_name) throws Exception {

		user_name = "%" + user_name + "%";
		
		return dao.searchName(user_name);
	}
	
	

}
