<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="com.springbook.biz.user.impl.UserDAO" %>
<%@ page import="com.springbook.biz.user.UserVO" %>    

<%
   String id=request.getParameter("id");
   String pwd=request.getParameter("pwd");
   
   //DB����
   UserVO vo = new UserVO();
   vo.setId(id);
   vo.setPassword(pwd);
   
   UserDAO userDAO = new UserDAO();
   UserVO user = userDAO.getUser(vo);

   if(user != null){
      response.sendRedirect("getBoardList.do");
   }else{
	  System.out.println("�߸��� �α��� ������");
      response.sendRedirect("login.jsp");
   }
   
%>