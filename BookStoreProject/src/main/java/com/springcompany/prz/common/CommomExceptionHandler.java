package com.springcompany.prz.common;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/* **
 * 예외처리 방법 1 : @ExceptionHandler 기반의 예외처리
 * (servlet-context.xml 에 <mvc:annotation-driven> 정의해야함
 * **/
@ControllerAdvice("com.springcompany.prz")
public class CommomExceptionHandler {
	
	@ExceptionHandler(IllegalArgumentException.class) // ()안에는 자료형의 명시를 해야함.
	public ModelAndView handeIllegalArgumentException(Exception e) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("exception", e);
		mav.setViewName("/common/arithmeticError");
		
		return mav;
	}
	
	@ExceptionHandler(NullPointerException.class) // ()안에는 자료형의 명시를 해야함.
	public ModelAndView handeNullPointerException(Exception e) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("exception", e);
		mav.setViewName("/common/nullPointerError");
		
		return mav;
	}
	
}
