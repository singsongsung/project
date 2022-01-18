package com.springcompany.biz.book.dao;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class BookVO {

	
	private int bookNum;
	private String bookTitle;		
	private String bookWriter;
	private String bookPublisher;
	private String bookContent;
	private String bookGenre;
	private int bookPrice;
	private String bookFile;
	private MultipartFile uploadFile;
	private Date bookDate;		
	private int bookReadCount;
	private String searchCondition;
	private String searchKeyword;
	private int bookListCount;
	private int start;
	private int end;

	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getBookListCount() {
		return bookListCount;
	}
	public void setBookListCount(int bookListCount) {
		this.bookListCount = bookListCount;
	}

	
	public int getBookNum() {
		return bookNum;
	}





	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}





	public String getBookTitle() {
		return bookTitle;
	}





	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}





	public String getBookWriter() {
		return bookWriter;
	}





	public void setBookWriter(String bookWriter) {
		this.bookWriter = bookWriter;
	}





	public String getBookPublisher() {
		return bookPublisher;
	}





	public void setBookPublisher(String bookPublisher) {
		this.bookPublisher = bookPublisher;
	}





	public String getBookContent() {
		return bookContent;
	}





	public void setBookContent(String bookContent) {
		this.bookContent = bookContent;
	}





	public String getBookGenre() {
		return bookGenre;
	}





	public void setBookGenre(String bookGenre) {
		this.bookGenre = bookGenre;
	}





	public int getBookPrice() {
		return bookPrice;
	}





	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}





	public String getBookFile() {
		return bookFile;
	}





	public void setBookFile(String bookFile) {
		this.bookFile = bookFile;
	}





	public MultipartFile getUploadFile() {
		return uploadFile;
	}





	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}





	public Date getBookDate() {
		return bookDate;
	}





	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}





	public int getBookReadCount() {
		return bookReadCount;
	}





	public void setBookReadCount(int bookReadCount) {
		this.bookReadCount = bookReadCount;
	}





	public String getSearchCondition() {
		return searchCondition;
	}





	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}





	public String getSearchKeyword() {
		return searchKeyword;
	}





	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}





	@Override
	public String toString() {
		
		String value = "BookVO[bookNum ="+bookNum+",bookTitle="+bookTitle+", bookWriter="+bookWriter+", bookPublisher="+bookPublisher+", bookContent"+bookContent+", bookGenre"+bookGenre+", bookPrice"+bookPrice+ "]";
		
		return value;
	}




}








