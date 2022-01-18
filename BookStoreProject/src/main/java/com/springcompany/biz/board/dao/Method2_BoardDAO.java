package com.springcompany.biz.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Method2_BoardDAO {
	
	DataSource ds;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	
	public void insertBoard(BoardVO vo) {
		mybatis.insert("BoardDAO.insertBoard", vo);
	}
	
	
	
	public List<BoardVO> getBoardList(BoardVO vo){	
		return mybatis.selectList("BoardDAO.selectBoard", vo);
	}
	
	
	public BoardVO getBoard(int seq) {
		mybatis.update("viewCount", seq);
		return mybatis.selectOne("BoardDAO.getBoard", seq);
	}
	
	
		public int countBoard() {
			return mybatis.selectOne("BoardDAO.countboard");
	} 	
	
	public void updateBoard(BoardVO vo) {
		mybatis.update("BoardDAO.updateBoard", vo);
	}
	
	
	public void deleteBoard(int seq) {
		mybatis.delete("BoardDAO.deleteBoard", seq);	

	}

}
