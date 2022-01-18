package com.springcompany.biz.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO extends SqlSessionDaoSupport{//DAO(Data Access Object)
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	
	public void insertBoard(BoardVO vo) {
		getSqlSession().insert("BoardDAO.insertBoard", vo);	
	}
	
	
	public List<BoardVO> getBoardList(BoardVO vo){
		
		if(vo.getSearchCondition().equals("TITLE")) {
			return getSqlSession().selectList("BoardDAO.getBoardList_T", vo);
		}else if(vo.getSearchCondition().equals("CONTENT")) {
			return getSqlSession().selectList("BoardDAO.getBoardList_C", vo);
		}else {
			return getSqlSession().selectList("BoardDAO.getBoardList_T", vo);
		}
		
	}
	
	
	
	public int countBoard() { 
		return getSqlSession().selectOne("BoardDAO.countboard"); 
	}
		 
	
	public BoardVO getBoard(int seq) {
		return getSqlSession().selectOne("BoardDAO.getBoard", seq);
	}
	
	
	public void updateBoard(BoardVO vo) {
		getSqlSession().update("BoardDAO.updateBoard", vo);
	}
	
	
	public void deleteBoard(int seq) {
		getSqlSession().delete("BoardDAO.deleteBoard", seq);
	}
}










