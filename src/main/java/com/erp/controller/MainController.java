package com.erp.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.erp.service.ErpService;
import com.erp.vo.Users;

// 연결해주는 메인 컨트롤러
@Controller
public class MainController {
	
	@Inject
	ErpService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	// 시작 화면(로그인)
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "login";
	}
	
	// main
	@RequestMapping(value ="/main", method = RequestMethod.GET)
	public String main(Model model) {
		return "main";
	}
	// 페이지 이동관리(테스트)
	
	// -- user page
	// search_clients(고객관리)
	@RequestMapping(value ="/search_clients", method = RequestMethod.GET)
	public String search_clients(Model model) {
		return "user/search_clients";
	}
	// search_orders(발주관리)
	@RequestMapping(value ="/search_orders", method = RequestMethod.GET)
	public String search_orders(Model model) {
		return "user/search_orders";
	}
	// search_product(제품관리)
	@RequestMapping(value ="/search_product", method = RequestMethod.GET)
	public String search_product(Model model) {
		return "user/search_product";
	}
	// search_salesList(영업관리)
	@RequestMapping(value ="/search_salesList", method = RequestMethod.GET)
	public String search_salesList(Model model) {
		return "user/search_salesList";
	}
	// search_supplier (공급처)	
	@RequestMapping(value ="/search_supplier", method = RequestMethod.GET)
	public String search_supplier(Model model) {
		return "user/search_supplier";
	}
	
	
	
	
	
	// -- 액션시 기능들
	// url -- loginAction일 경우
	@RequestMapping(value = "/loginAction", method = RequestMethod.POST)
	public String loginAction(Users users, HttpSession session, RedirectAttributes ra) throws Exception {
		
		
		
		Users result = service.loginAction(users);
		String url = null;
		
		if(result == null) {

			ra.addFlashAttribute("msg", "로그인 정보가 일치하지 않습니다. ");
			url = "redirect:/";
			
		}
		
		else if(result.getUser_num().equals("admin")) {
			session.setAttribute("user", users);
			url = "redirect:/admin/add_dept";
		}
		
		else if((result.getUser_num().substring(0, 2) == "SAL")	||
					(result.getUser_num().substring(0, 2) == "HRD") ||
					(result.getUser_num().substring(0, 2) == "PUR") ||
					(result.getUser_num().substring(0, 2) == "DEF")	){
			session.setAttribute("user", users);
			url = "redirect:/user/search_clients";
		}
		
		else {
			ra.addFlashAttribute("msg", "로그인 정보가 일치하지 않습니다. ");
			url = "redirect:/";
			
		}
		return url;
	}
	
	// url -- logout일 경우
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		
		// 세션 지우기
		session.invalidate();
		
		return "redirect:/";
	}

	@RequestMapping(value = "/searchName", method = RequestMethod.GET)
	@ResponseBody
	public List<Users> searchName(String user_name) throws Exception {
		
		return service.searchName(user_name);
	}
}












