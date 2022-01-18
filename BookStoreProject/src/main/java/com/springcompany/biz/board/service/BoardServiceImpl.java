package com.springcompany.biz.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springcompany.biz.board.dao.BoardVO;
import com.springcompany.biz.board.dao.Method2_BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	
	Method2_BoardDAO boardDAO;
	
	@Override
	public void insertService(BoardVO vo) {
		boardDAO.insertBoard(vo);
	}

	@Override
	public List<BoardVO> getServiceList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}

	@Override
	public BoardVO getService(int seq) {
		return boardDAO.getBoard(seq);
	}

	@Override
	public void updateService(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	@Override
	public void deleteService(int seq) {
		boardDAO.deleteBoard(seq);
	}
	
	@Override
	public int countboard() {
		return boardDAO.countBoard();
	}
}
