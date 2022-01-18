package com.springcompany.prz.board.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.springcompany.biz.board.dao.BoardVO;
import com.springcompany.biz.board.service.BoardService;
import com.springcompany.biz.board.utils.PagingVO;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;

	
	@RequestMapping(value = "/insertBoard.do", method = RequestMethod.GET)
	public String insertBoardForm() {
		System.out.println("글 등록 화면 처리..");

		return "insertBoardForm";
	}

	
	@RequestMapping(value = "/insertBoard.do", method = RequestMethod.POST)
	public String insertBoardProc(BoardVO vo, HttpSession session) throws IOException {
		System.out.println("글 등록 처리");

		
		String fileSaveFolder = session.getServletContext().getRealPath("/boardUpload/");
		

		MultipartFile uploadFile = vo.getUploadFile();

		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		}

		boardService.insertService(vo);

		return "redirect:getBoardList.do";
	}

	@RequestMapping(value = "/getReply.do", method = RequestMethod.GET)
	public String getReplyForm() {
		System.out.println("답글폼");
		return "BoardReply";
	}

	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();

		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");

		return conditionMap;
	}

	
	@RequestMapping("/getBoardList.do")
	public String getBoardList(Model model, BoardVO vo, HttpServletRequest request) {

		
		String nowPage = request.getParameter("nowPage");
		String cntPerPage = request.getParameter("cntPerPage");

		int total = boardService.countboard();

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
			System.out.println("string cnt : " + cntPerPage);
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}
		vo.setEnd(Integer.parseInt(nowPage) * Integer.parseInt(cntPerPage));
		vo.setStart(vo.getEnd() - Integer.parseInt(cntPerPage) + 1);

		PagingVO pvo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

		System.out.println("글 목록 검색 처리");

		
		if (vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		}

		if (vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}

		List<BoardVO> list = boardService.getServiceList(vo);

		model.addAttribute("paging", pvo);
		model.addAttribute("boardList", list);

		return "getBoardList";
	}

	
	@RequestMapping("/getBoard.do")
	public String getBoard(BoardVO vo, Model model) {
		System.out.println("글 상세 조회 처리.");

		BoardVO board = boardService.getService(vo.getSeq());

		model.addAttribute("board", board);

		return "getBoard";
	}

	
	@RequestMapping("/updateBoard.do")
	public String updateBoard(BoardVO vo) {
		System.out.println("글 수정 처리.");

		boardService.updateService(vo);

		return "redirect:getBoardList.do";
	}

	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		System.out.println("글 삭제 처리.");
		
		boardService.deleteService(vo.getSeq());
		
		return "redirect:getBoardList.do";
	}
}


