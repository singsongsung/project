package com.springcompany.biz.review.service;

import java.util.List;

import com.springcompany.biz.book.dao.BookVO;
import com.springcompany.biz.review.dao.BookReviewVO;

public interface BookReviewService {
	
	void insertService(BookReviewVO vo);
	
	
	List<BookReviewVO> getServiceList(int bookNum);
	
	
	void updateService(BookReviewVO vo);
	
	
	void deleteService(int reviewNum);

}
