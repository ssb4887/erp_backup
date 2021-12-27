package com.erp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.vo.Supplier;

// user 공급처
@Repository
public class SupplierDAOImpl implements SupplierDAO {

	@Inject
	SqlSession sqlSession;
	
	final String SESSION = "com.erp.mappers.erp";

	@Override
	public List<Supplier> getSupplier() throws Exception {
		
		return sqlSession.selectList(SESSION + ".getSupplier");
	}

}
