package com.springcompany.biz.book.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BookRowMapper implements RowMapper<BookVO>{

	 @Override
	   public BookVO mapRow(ResultSet rs, int rowNum) throws SQLException {

	      BookVO book = new BookVO();
	      
	      book.setBookNum(rs.getInt("bookNum"));
	      book.setBookTitle(rs.getString("bookTitle"));
	      book.setBookWriter(rs.getString("bookWriter"));
	      book.setBookPublisher(rs.getString("bookPublisher"));
	      book.setBookGenre(rs.getString("bookGenre"));
	      book.setBookPrice(rs.getInt("bookPrice"));
	      book.setBookContent(rs.getString("bookContent")); 
	      book.setBookFile(rs.getString("bookFile"));
	      book.setBookDate(rs.getDate("bookDate"));
	      book.setBookReadCount(rs.getInt("bookReadCount"));
	      
	      return book;
	   }
	 
}	 