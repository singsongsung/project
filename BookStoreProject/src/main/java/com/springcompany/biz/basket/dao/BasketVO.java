package com.springcompany.biz.basket.dao;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class BasketVO {//VO(value object), DTO(data transfer object), BEAN(java bean)


	private int basketNum;		
	private String basketBookTitle;
	private String basketBookWriter;
	private int basketBookAmount;
	private int basketBookPrice;
	private String basketBookFile;
	private Date basketDate;
	private MultipartFile uploadFile;
	private int bookNum;
	private String id;

	
	


	public String getId() {
		return id;
	}





	public void setId(String id) {
		this.id = id;
	}





	public int getBasketNum() {
		return basketNum;
	}





	public void setBasketNum(int basketNum) {
		this.basketNum = basketNum;
	}



	public String getBasketBookTitle() {
		return basketBookTitle;
	}





	public void setBasketBookTitle(String basketBookTitle) {
		this.basketBookTitle = basketBookTitle;
	}





	public String getBasketBookWriter() {
		return basketBookWriter;
	}





	public void setBasketBookWriter(String basketBookWriter) {
		this.basketBookWriter = basketBookWriter;
	}





	public int getBasketBookAmount() {
		return basketBookAmount;
	}





	public void setBasketBookAmount(int basketBookAmount) {
		this.basketBookAmount = basketBookAmount;
	}





	public int getBasketBookPrice() {
		return basketBookPrice;
	}





	public void setBasketBookPrice(int basketBookPrice) {
		this.basketBookPrice = basketBookPrice;
	}





	public String getBasketBookFile() {
		return basketBookFile;
	}





	public void setBasketBookFile(String basketBookFile) {
		this.basketBookFile = basketBookFile;
	}





	public Date getBasketDate() {
		return basketDate;
	}





	public void setBasketDate(Date basketDate) {
		this.basketDate = basketDate;
	}





	public MultipartFile getUploadFile() {
		return uploadFile;
	}





	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}





	public int getBookNum() {
		return bookNum;
	}





	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}





	@Override
	public String toString() {
		
		String value = "BasketVO[basketNum ="+basketNum+", basketBookTitle="+basketBookTitle+", basketBookWriter="+basketBookWriter+", basketBookAmount"+basketBookAmount+", basketBookPrice"+basketBookPrice+", basketDate"+basketDate+ "]";
		
		return value;
	}




}








