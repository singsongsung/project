package com.springcompany.biz.book.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springcompany.biz.paging.PagingVO;

@Repository
public class BookDAO {
	@Autowired
	SqlSessionTemplate mybatis;
	
	
		public void insertBook(BookVO vo) {
			mybatis.insert("BookDAO.insertBook",vo);
		
		}
		


		
		public List<BookVO> getBookList(BookVO vo){

			if(vo.getSearchCondition().equals("TITLE")) {
				return mybatis.selectList("BookDAO.getBookList_T", vo);
			
			} else if(vo.getSearchCondition().equals("CONTENT")) {
			
				return mybatis.selectList("BookDAO.getBookList_C",vo);
				
			}else if(vo.getSearchCondition().equals("WRITER")) {
			
				return mybatis.selectList("BookDAO.getBookList_W",vo);
				
			}  else {
				
				return mybatis.selectList("BookDAO.getBookList_T", vo);
			}
				

		}
		
		
		public int countBook() {
			return mybatis.selectOne("BookDAO.countBook");
		}
		
		
		public BookVO getBook(int bookNum) {
		
			mybatis.update("BookDAO.readCountUpdate", bookNum);
			return mybatis.selectOne("BookDAO.getBook", bookNum);
		}
		
		
		public void updateBook(BookVO vo) {
			mybatis.update("BookDAO.updateBook",vo);
		}
		
		
		public void deleteBook(int bookNum) {
			mybatis.delete("BookDAO.deleteBook",bookNum);
		}
		
		
		public List<BookVO> topBook(int rnum){
			return mybatis.selectList("BookDAO.topBook",rnum);
		}
		
		public List<BookVO> newBook(int rnum){
			return mybatis.selectList("BookDAO.newBook",rnum);
		}
}
