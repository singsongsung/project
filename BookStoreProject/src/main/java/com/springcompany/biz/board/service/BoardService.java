package com.springcompany.biz.board.service;

import java.util.List;

import com.springcompany.biz.board.dao.BoardVO;

public interface BoardService {
	
	void insertService(BoardVO vo);
	
	
	List<BoardVO> getServiceList(BoardVO vo);
	
	
	BoardVO getService(int seq);
	
	
	void updateService(BoardVO vo);
	
	
	void deleteService(int seq);
	
	
	int countboard();
	
	
	
}








