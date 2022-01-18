package com.springcompany.biz.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springcompany.biz.user.dao.UserDAO;
import com.springcompany.biz.user.dao.UserVO;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO userDAO;
	
	@Override
	public UserVO getService(String id) {
		return userDAO.login(id);
	}

	@Override
	public void insertService(UserVO vo) {
		userDAO.insertUser(vo);
		
	}
	
	
	 
	  
	  @Override public void updateService(UserVO vo) { userDAO.updateUser(vo); }
	  
	 
	 
	  @Override public void deleteService(String id) { userDAO.deleteUser(id); }
	 
}
