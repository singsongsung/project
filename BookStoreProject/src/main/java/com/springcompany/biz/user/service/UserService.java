package com.springcompany.biz.user.service;

import com.springcompany.biz.user.dao.UserVO;

public interface UserService {
	
	UserVO getService(String id);
	
	
	void insertService(UserVO vo);
	
	 
	void updateService(UserVO vo);
	
	
	void deleteService(String password);
}
