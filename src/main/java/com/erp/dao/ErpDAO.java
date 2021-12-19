package com.erp.dao;

import java.util.List;

import com.erp.vo.Department;
import com.erp.vo.Users;
// dao 	는 mapper 아이디와 동일하게 지어주는 것이 좋다 
public interface ErpDAO {
	// 로그인 기능
	public Users login(Users users) throws Exception;
	
	// 부서 리스트 들고오기
	public List<Department> getDeptList() throws Exception;
	
	// 부서 객체 들고 오기
	public Department getDepartment(String dept_num) throws Exception;
	
	// 부서별 유저 카운트에 + 1
	// 유저 테이블을 기준으로 각 부서에 몇명이 있는지 검사
	public int getDeptUserCnt(String dept_num) throws Exception;
	
	// 유저 목록 불러오기
	public List<Users> getUsersList() throws Exception;
	
	// 유저 이름으로 데이터 검색
	public List<Users> searchName(String user_name) throws Exception;
}
