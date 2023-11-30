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
		System.out.println("�� ��� �˻� ó��");
		//DB����ó��
			BoardVO vo = new BoardVO();
			BoardDAO boardDAO = new BoardDAO();
			List<BoardVO> boardList = boardDAO.getBoardList(vo);
		/*	
		//�˻� ����� ���ǿ� �����ϰ� ��� ȭ������ �̵�
			HttpSession session = request.getSession();
			session.setAttribute("boardList", boardList);
			return "getBoardList";
		*/
			//model ����, view ����
			ModelAndView mav = new ModelAndView();
			mav.addObject("boardList",boardList);
			mav.setViewName("getBoardList");
			return mav;
			
	}
}
