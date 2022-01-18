package com.springcompany.biz.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springcompany.biz.book.dao.BookDAO;
import com.springcompany.biz.book.dao.BookVO;

@Service
public class BookServiceImpl implements BookService{
	@Autowired
	BookDAO bookDAO;
	
	@Override
	public void insertService(BookVO vo) {
		
		bookDAO.insertBook(vo); 
		
	}

	@Override
	public List<BookVO> getServiceList(BookVO vo) {
		
		//List = java collection framework
		return bookDAO.getBookList(vo);
	}

	@Override
	public BookVO getService(int bookNum) {
		
		return bookDAO.getBook(bookNum);
	}

	@Override
	public void updateService(BookVO vo) {
		bookDAO.updateBook(vo);
		
	}

	@Override
	public void deleteService(int bookNum) {
		
		bookDAO.deleteBook(bookNum);
	}

	@Override
	public int countBook() {
		
		return bookDAO.countBook();
	}

	@Override
	public List<BookVO> getTopList(int rnum) {
		
		return bookDAO.topBook(rnum);
	}

	@Override
	public List<BookVO> getNewList(int rnum) {
		
		return bookDAO.newBook(rnum);
	}


}
