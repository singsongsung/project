package com.springcompany.biz.review.dao;

import java.sql.Date;

public class BookReviewVO {
	
	private int reviewNum;
	private int bookNum;
	private String reviewName;
	private String reviewContent;
	private Date reviewDate;
	private int reviewScore;
	public int getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public String getReviewName() {
		return reviewName;
	}
	public void setReviewName(String reviewName) {
		this.reviewName = reviewName;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public int getReviewScore() {
		return reviewScore;
	}
	public void setReviewScore(int reviewScore) {
		this.reviewScore = reviewScore;
	}
	@Override
	public String toString() {
		String value ="BookReviewVO[reviewNum ="+reviewNum +"bookNum="+bookNum+"reviewName="+reviewName+"reviewContent="+reviewContent+"reviewScore="+reviewScore+"]";
		return value;
	}
	
	

}
