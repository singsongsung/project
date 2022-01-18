package com.springcompany.prz.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springcompany.biz.user.dao.UserVO;
import com.springcompany.biz.user.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping(value="login.lo",method=RequestMethod.GET)
	public String loginForm(@ModelAttribute("user") UserVO vo) {
		
		System.out.println("로그인 화면 처리");
		
		return "account/login";
	}
	@RequestMapping(value="login.lo",method=RequestMethod.POST)
	public String loginProc(UserVO vo, HttpSession session) {
		System.out.println("로그인 처리");
		
		String retVal = null;

		
		UserVO user = userService.getService(vo.getId());
		
		if((user != null) && (user.getPassword().equals(vo.getPassword()))) {
			session.setAttribute("userId", user.getId());
			session.setAttribute("userName", user.getName());
			session.setAttribute("userRole", user.getRole());
			System.out.println(session.getAttribute("userId"));
			retVal="redirect:main.bs";
		}
		else {
			retVal = "redirect:login.lo";
		}
		return retVal;
	}
	
	@RequestMapping("logout.lo")
	public String logout(HttpSession session) {
		System.out.println("로그아웃 처리");
		
		session.invalidate();
		return "redirect:main.bs";
	}
	
}
