package com.springcompany.biz.basket.service;

import java.util.List;

import com.springcompany.biz.basket.dao.BasketVO;



public interface BasketService {
	
	
	void insertService(BasketVO vo);
	
	
	List<BasketVO> getServiceList(String id);
	
	
	 
	BasketVO getService(int basketNum);
	
	
	
	int countBasket(int bookNum);
	 

	
	void updateService(BasketVO vo);
	 
	
	
	void deleteService(int basketNum);
	
	
	
	void changeBasket(BasketVO vo);
	
	
	
	BasketVO buyBasket(int basketNum);

	
	


}








