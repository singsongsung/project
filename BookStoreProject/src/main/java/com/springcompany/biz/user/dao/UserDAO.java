package com.springcompany.biz.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate mybatis;
	
	
	public UserVO login(String id) {
		return mybatis.selectOne("UserDAO.login",id);
	}
	
	public void insertUser(UserVO vo) {
		mybatis.insert("UserDAO.insertUser", vo);
	}
	
	
	public  List<UserVO> getUserList(UserVO vo) {
		return mybatis.selectList("UserDAO.getUserList", vo);
	}
	
	
	public UserVO getUser(String id) {
		return mybatis.selectOne("UserDAO.getUser", id);
	}
	

	
	public void updateUser(UserVO vo) {
		mybatis.update("UserDAO.updateUser", vo);
	}
	
	
	public void deleteUser(String id) {
		mybatis.delete("UserDAO.deleteUser", id);
	}
}
