package com.erp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.vo.Department;
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

	@Override
	public List<Department> getDeptList() throws Exception {

		return sqlSession.selectList(SESSION + ".getDeptList");
	}

	@Override
	public Department getDepartment(String dept_num) throws Exception {

		return sqlSession.selectOne(SESSION + ".getDepartment", dept_num);
	}

	@Override
	public int getDeptUserCnt(String dept_num) throws Exception {

		return sqlSession.selectOne(SESSION + ".getDeptUserCnt", dept_num);
	}

	@Override
	public List<Users> getUsersList() throws Exception {
		
		return sqlSession.selectList(SESSION + ".getUsersList");
	}

	@Override
	public List<Users> searchName(String user_name) throws Exception {

		return sqlSession.selectList(SESSION + ".searchName", user_name); //mapper 에 #{} 에 요구하는 것에 넘겨주는 부분 
	}

	@Override
	public void join(Users users) throws Exception {
		sqlSession.insert(SESSION + ".join", users);
	}

}
