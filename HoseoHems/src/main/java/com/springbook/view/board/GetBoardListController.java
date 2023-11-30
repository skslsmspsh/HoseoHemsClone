package com.springbook.view.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;
//import com.springbook.view.controller.Controller;

public class GetBoardListController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,HttpServletResponse response) {
		System.out.println("글 목록 검색 처리");
		//DB연동처리
			BoardVO vo = new BoardVO();
			BoardDAO boardDAO = new BoardDAO();
			List<BoardVO> boardList = boardDAO.getBoardList(vo);
		/*	
		//검색 결과를 세션에 저장하고 목록 화면으로 이동
			HttpSession session = request.getSession();
			session.setAttribute("boardList", boardList);
			return "getBoardList";
		*/
			//model 저장, view 저장
			ModelAndView mav = new ModelAndView();
			mav.addObject("boardList",boardList);
			mav.setViewName("getBoardList");
			return mav;
			
	}
}
