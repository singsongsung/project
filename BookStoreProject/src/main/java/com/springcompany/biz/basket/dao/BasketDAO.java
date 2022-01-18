package com.springcompany.biz.basket.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springcompany.biz.basket.dao.BasketVO;

@Repository
public class BasketDAO {
	@Autowired
	SqlSessionTemplate mybatis;
	
	
		public void insertBasket(BasketVO vo) {
			mybatis.insert("BasketDAO.insertBasket",vo);
		
		}
		
	
		
		public List<BasketVO> getBasketList(String id){

		return mybatis.selectList("BasketDAO.getBasketList", id);

		}
		
		
		public int countBasket(int bookNum) {
			
			return mybatis.selectOne("BasketDAO.countBasket", bookNum);
		}
		
		  
		  
		public BasketVO getBasket(int basketNum) {
		  
		  return mybatis.selectOne("BasketDAO.getBasket", basketNum); }
		 
		
		  
		  
		  public void updateBasket(BasketVO vo) {
		  mybatis.update("BasketDAO.updateBasket",vo); }
		 
				
		
		public void deleteBasket(int basketNum) {
			mybatis.delete("BasketDAO.deleteBasket",basketNum);
		}
		
		
		public void changeBasket(BasketVO vo) {
			mybatis.update("BasketDAO.changeBasket",vo);
			
		}
		
		
		
		public BasketVO buyBasket(int basketNum) {
			
			return mybatis.selectOne("BasketDAO.buyBasket", basketNum);
		}



	
		
		
		
		

	
}
