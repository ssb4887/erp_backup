package com.erp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.erp.service.ErpService;
import com.erp.vo.Department;
import com.erp.vo.Users;

// 관리자 컨트롤러
@Controller
@RequestMapping(value="/admin/*")
public class AdminController {
	
	@Inject
	ErpService service;
	
	// adminMain
	@RequestMapping(value ="/adminMain", method = RequestMethod.GET)
	public String main(Model model) {
		return "admin/adminMain";
	}
	
	
	// add_employee(사원등록)
	@RequestMapping(value ="/add_employee", method = RequestMethod.GET)
	public String add_employee(Model model) throws Exception{
		// 여기랑 또옥같음!	
		List<Department> dept_list = service.getDeptList();
		model.addAttribute("dept_list", dept_list);
		
		return "admin/add_employee";
	}
	// -- admin page
	// add_dept(부서추가)
	@RequestMapping(value ="/add_dept", method = RequestMethod.GET)
	public String add_dept(Model model) {
		return "admin/add_dept";
	}

	// correct_auth(권한부여)
	@RequestMapping(value ="/correct_auth", method = RequestMethod.GET)
	public String correct_auth(Model model) {
		return "admin/correct_auth";
	}
	
	// 사원등록할때 사원번호, 부서 정보 불러오기
	@RequestMapping(value = "/getUserNumCnt", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> getUserNumCnt(String dept_num) throws Exception {
		
		Map<String, String> map = new HashMap<String, String>();
		
		Department department = service.getDepartment(dept_num);
		String user_num = service.makeUser_num(dept_num);
	
		map.put("user_num", user_num);
		map.put("dept_num", department.getDept_num());
		map.put("dept_name", department.getDept_name());
		
		return map;
	}
	
	
	// search_dept(사원검색)
	@RequestMapping(value ="/search_dept", method = RequestMethod.GET)
	public String search_dept(Model model) throws Exception {
		
		List<Users> list = service.getUsersList();
		
		model.addAttribute("user_list", list);
		
		return "admin/search_dept";
	}
	
}
