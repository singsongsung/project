package com.springcompany.prz.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springcompany.biz.review.dao.BookReviewVO;
import com.springcompany.biz.review.service.BookReviewService;

@Controller
public class BookReviewController {
	
	@Autowired
	BookReviewService bookReviewService;
	
	
	@RequestMapping(value="/insertReview.br", method=RequestMethod.POST)
	public String insertBookReviewProc(BookReviewVO vo, Model model){
		System.out.println("댓글 등록 처리");
		System.out.println("댓글 게시글 번호"+vo.getBookNum());
		
		bookReviewService.insertService(vo);
		

		
		return "redirect:getReviewList.br?bookNum="+vo.getBookNum();
	}
	
	

	@RequestMapping(value="/getReviewList.br")
	public String getReviewList(Model model, BookReviewVO vo) {
		System.out.println("댓글 등록 후 처리");
		

		List<BookReviewVO> review = bookReviewService.getServiceList(vo.getBookNum());
		model.addAttribute("reviewList",review);
		
		String value = "redirect:getBook.bs?bookNum="+vo.getBookNum();
		return value;
	}
	
	
	@RequestMapping(value="/deleteReview.br")
	public String deleteReview(BookReviewVO vo) {
		
		bookReviewService.deleteService(vo.getReviewNum());
		return "redirect:getBook.bs?bookNum="+vo.getBookNum();
	}
}
