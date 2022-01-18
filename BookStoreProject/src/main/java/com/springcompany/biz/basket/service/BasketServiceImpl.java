package com.springcompany.biz.basket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springcompany.biz.basket.dao.BasketDAO;
import com.springcompany.biz.basket.dao.BasketVO;



@Service
public class BasketServiceImpl implements BasketService{
	@Autowired
	BasketDAO basketDAO;
	
	@Override
	public void insertService(BasketVO vo) {
		
		basketDAO.insertBasket(vo); 
		
	}

	@Override
	public List<BasketVO> getServiceList(String id) {
		
		return basketDAO.getBasketList(id);
	}

	
	@Override public BasketVO getService(int basketNum) {
	  
	 return basketDAO.getBasket(basketNum); 
	 
	}
	 
	@Override public void updateService(BasketVO vo) {
	  
	  basketDAO.updateBasket(vo); 
	  
	}
	 

	@Override
	public void deleteService(int basketNum) {
		
		basketDAO.deleteBasket(basketNum);
		
	}

	@Override
	public int countBasket(int bookNum) {
		 return basketDAO.countBasket(bookNum);
		
	}

	@Override
	public void changeBasket(BasketVO vo) {
		basketDAO.changeBasket(vo);
		
	}

	@Override
	public BasketVO buyBasket(int basketNum) {
		return basketDAO.buyBasket(basketNum);
	}






}
