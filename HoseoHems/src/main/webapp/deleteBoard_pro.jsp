<%@page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@page import="com.springbook.biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
   String seq = request.getParameter("seq");
   
   //DB����
   BoardVO vo = new BoardVO();
   vo.setSeq(Integer.parseInt(seq));
   
   BoardDAO boardDAO = new BoardDAO();
   boardDAO.deleteBoard(vo);

   response.sendRedirect("getBoardList.do");
   
%>