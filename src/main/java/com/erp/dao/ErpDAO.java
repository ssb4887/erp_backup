package com.erp.dao;

import com.erp.vo.Users;

public interface ErpDAO {
	// 로그인 기능
	public Users login(Users users) throws Exception;
	
	// 사원 등록
	
}
