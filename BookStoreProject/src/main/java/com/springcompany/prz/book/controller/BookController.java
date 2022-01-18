package com.springcompany.prz.book.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.springcompany.biz.book.dao.BookVO;
import com.springcompany.biz.book.service.BookService;
import com.springcompany.biz.paging.PagingVO;
import com.springcompany.biz.review.dao.BookReviewVO;
import com.springcompany.biz.review.service.BookReviewService;

@Controller
public class BookController {

	@Autowired
	BookService bookService;
	
	@Autowired
	BookReviewService bookReview;
	
	@RequestMapping(value="/main.bs")
	public String homeForm(Model model, BookVO vo) {
		List<BookVO> topList = bookService.getTopList(5);
		List<BookVO> newList = bookService.getNewList(5);

		model.addAttribute("newList", newList);
		model.addAttribute("topList", topList);
		
		return "main";
	}
	
	
	@RequestMapping(value = "/insertBook.bs", method=RequestMethod.GET)
	public String insertBookForm() {
		System.out.println("책 등록 화면 처리.");
		
		return "/book/insertBookForm";
		
	}

	
	
	   @RequestMapping(value="/insertBook.bs",method=RequestMethod.POST)
	   public String insertBookProc(BookVO vo, HttpSession session) throws IOException {
	      System.out.println("책 등록 처리.");
	      
	      String fileSaveFolder = session.getServletContext().getRealPath("/bookUpload/");
	      System.out.println("=>"+fileSaveFolder);
	      
	      MultipartFile uploadFile = vo.getUploadFile();
	      
	      if(!uploadFile.isEmpty()) {
	         String fileName = uploadFile.getOriginalFilename();
	         uploadFile.transferTo(new File(fileSaveFolder+fileName));
	         
	         System.out.println(fileName);
	         vo.setBookFile(fileName);
	      }else {
	         vo.setBookFile("test.png");
	      }
	      
	      bookService.insertService(vo);
	      
	      return "redirect:getBookList.bs?user=admin";
	   }
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap(){
		Map<String,String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		conditionMap.put("저자", "WRITER");
		
		return conditionMap;

	}
		
	
	@RequestMapping("/getBookList.bs")
	public String getBookList(Model model, BookVO vo, HttpServletRequest request) {
		
		
				String nowPage = request.getParameter("nowPage");
				String cntPerPage = request.getParameter("cntPerPage");
				
				int total = bookService.countBook();
				
				if(nowPage==null && cntPerPage==null) {
					nowPage="1";
					cntPerPage="10";
					System.out.println("string cnt : "+cntPerPage);
				}else if(nowPage==null) {
					nowPage="1";
				}else if(cntPerPage==null) {
					cntPerPage = "10";
				}
				
				
				
				vo.setEnd(Integer.parseInt(nowPage) * Integer.parseInt(cntPerPage));
				vo.setStart(vo.getEnd() - Integer.parseInt(cntPerPage)+1);
				
				System.out.println(Integer.parseInt(nowPage));
				System.out.println(Integer.parseInt(cntPerPage));
				
				PagingVO pvo = new PagingVO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
		System.out.println("책 목록 검색 처리");
		
		
		
		if(vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		}
		
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		List<BookVO> list = bookService.getServiceList(vo);
		
		model.addAttribute("paging",pvo);
		model.addAttribute("bookList", list);
		return "/book/getBookList"; 
	
	}
	
	
	@RequestMapping("/getBook.bs")
	public String getBook(BookVO vo, Model model) {
		
		System.out.println("책 상세 조회 처리");
		
		BookVO book = bookService.getService(vo.getBookNum());
		
		
		List<BookReviewVO> review = bookReview.getServiceList(vo.getBookNum());
		
		model.addAttribute("reviewList",review);
		
		model.addAttribute("book", book);
		
	
		
		return "/book/getBook";
	}
	
	
	
		@RequestMapping(value="/updateBook.bs", method=RequestMethod.GET)
		public String updateBookForm(BookVO vo, Model model) {
			System.out.println("글 수정 폼");
			
			BookVO book = bookService.getService(vo.getBookNum());
			model.addAttribute("book", book);
			
			return "/book/updateBookForm";
		}
		
		
		@RequestMapping(value="/updateBook.bs", method=RequestMethod.POST)
		public String updateBookProc(BookVO vo,HttpSession session) throws IOException {
			System.out.println("글 수정 처리");
			
			/*
			 * String fileSaveFolder =
			 * session.getServletContext().getRealPath("/bookUpload/");
			 * System.out.println("=>"+fileSaveFolder);
			 * 
			 * MultipartFile uploadFile = vo.getUploadFile();
			 * 
			 * if(!uploadFile.isEmpty()) { String fileName =
			 * uploadFile.getOriginalFilename(); uploadFile.transferTo(new
			 * File(fileSaveFolder+fileName));
			 * 
			 * System.out.println(fileName); vo.setBookFile(fileName); }else {
			 * vo.setBookFile("test.png"); }
			 */
			bookService.updateService(vo);
			
			
			return "redirect:getBook.bs?bookNum="+vo.getBookNum()+"&user=admin";
		}
	
	
	@RequestMapping("/deleteBook.bs")
	public String deleteBook(BookVO vo) {
		System.out.println("책 삭제 기능");
		
		bookService.deleteService(vo.getBookNum());
		
		return "redirect:getBookList.bs";
		
	}
	
}


