package com.springcompany.prz.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springcompany.biz.user.dao.UserVO;
import com.springcompany.biz.user.service.UserService;

@Controller
public class JoinController {

	@Autowired
	UserService userService;
	
	
	
	  @RequestMapping(value = "join.lo", method = RequestMethod.GET) public
	  String joinForm(@ModelAttribute("sign") UserVO vo) {
	  System.out.println("회원가입 화면 처리");
	  
	  return "/account/joinUserForm"; }
	 
	
	
	@RequestMapping(value = "/insertUser.lo", method = RequestMethod.POST)
	public String joinProc(UserVO vo, HttpSession session, Model model) throws IOException {
		System.out.println("회원 가입 기능 처리 ( 전달 값 = [ " + vo +"]");
		
		if(vo != null){
			
			userService.insertService(vo);
			

			return "redirect:main.bs";
			
		} else {
			return "/account/joinUserForm";
		}
	}
	
	
	
	
	@RequestMapping(value = "getUser.lo")
	public String getUser(UserVO vo, Model model) {
		System.out.println("회원 상세보기");

		UserVO user = userService.getService(vo.getId());
		
		model.addAttribute("user", user);
		
		return "account/info";
	}
	
	
	@RequestMapping(value = "updateUser.lo", method = RequestMethod.POST)
	public String updateUser(UserVO vo) {
		System.out.println("회원 수정");
		
		
		userService.updateService(vo);
		
		return "mypage/userInfo";
	}
	
	
	
	@RequestMapping(value = "deleteUser.lo",method = RequestMethod.POST)
	public String deleteProc(UserVO vo) {
		System.out.println("탈퇴 처리");
		
		UserVO user = userService.getService(vo.getId());
		
		if((user != null) && (user.getPassword().equals(vo.getPassword()))) {
			userService.deleteService(vo.getId());
		}
		
		return "account/deleteUser";
	}
	

	

	

}
