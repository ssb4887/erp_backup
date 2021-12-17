package com.erp.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.vo.Users;

@Repository
public class ErpDAOImpl implements ErpDAO {

	@Inject
	SqlSession sqlSession;
	
	final String SESSION = "com.erp.mappers.erp";
	
	@Override
	public Users login(Users users) throws Exception {
		
		return sqlSession.selectOne(SESSION + ".login", users);
	}

}
