package com.springcompany.biz.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserRowMapper implements RowMapper<UserVO>{
	
	@Override
	public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {

		UserVO user = new UserVO();
		
		user.setId(rs.getString("id"));
		user.setPassword(rs.getString("password"));
		user.setName(rs.getString("name"));
		user.setEmail(rs.getString("email"));
		user.setAddress(rs.getString("address"));
		user.setPhoneNum(rs.getString("phoneNum"));
		user.setRole(rs.getInt("role"));
		
		return user;
	}
}
