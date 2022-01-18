package com.springcompany.biz.book.service;

import java.util.List;

import com.springcompany.biz.book.dao.BookVO;

public interface BookService {

	void insertService(BookVO vo);
	
	
	List<BookVO> getServiceList(BookVO vo);
	
	
	BookVO getService(int seq);
	
	
	void updateService(BookVO vo);
	
	
	void deleteService(int seq);
	
	
	int countBook();
		
	
	List<BookVO> getTopList(int rnum);
		
	
	List<BookVO> getNewList(int rnum);
}








