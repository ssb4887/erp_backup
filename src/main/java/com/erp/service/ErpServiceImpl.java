package com.erp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.ErpDAO;
import com.erp.vo.Users;
@Service
public class ErpServiceImpl implements ErpService {
	@Inject
	ErpDAO dao;

	@Override
	public Users loginAction(Users users) throws Exception {
		
		return dao.login(users);
	
	}

}
