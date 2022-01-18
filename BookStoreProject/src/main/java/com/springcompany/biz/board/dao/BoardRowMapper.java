package com.springcompany.biz.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BoardRowMapper implements RowMapper<BoardVO>{

	@Override
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO board = new BoardVO();
		
		board.setSeq(rs.getInt("seq"));
		board.setTitle(rs.getString("title"));
		board.setWriter(rs.getString("writer"));
		board.setContent(rs.getString("content"));
		board.setRegdate(rs.getDate("regdate"));
		board.setCnt(rs.getInt("cnt"));
		board.setBoardReplyRef(rs.getInt("boardReplyRef"));
		board.setBoardReplyLev(rs.getInt("boardReplyLev"));
		board.setBoardReplySeq(rs.getInt("boardReplySeq"));
		
		
		return board; 
	}

}
