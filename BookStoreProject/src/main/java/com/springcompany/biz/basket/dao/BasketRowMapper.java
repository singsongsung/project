package com.springcompany.biz.basket.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BasketRowMapper implements RowMapper<BasketVO>{

	 @Override
	   public BasketVO mapRow(ResultSet rs, int rowNum) throws SQLException {

	      BasketVO basket = new BasketVO();
	      
	      basket.setBasketNum(rs.getInt("basketNum"));
	      basket.setBasketBookTitle(rs.getString("basketBookTitle"));
	      basket.setBasketBookWriter(rs.getString("basketBookWriter"));
	      basket.setBasketBookAmount(rs.getInt("basketBookAmount"));
	      basket.setBasketBookPrice(rs.getInt("basketBookPrice"));
	      basket.setBasketBookFile(rs.getString("basketBookFile")); 
	      basket.setBasketDate(rs.getDate("basketDate"));
	      
	    
	      
	      return basket;
	   }
	 
}	 