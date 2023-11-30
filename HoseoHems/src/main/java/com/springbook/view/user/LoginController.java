package com.springbook.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;
//import com.springbook.view.controller.Controller;

public class LoginController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		   
		//DB연동
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(pwd);
		   
		UserDAO userDAO = new UserDAO();
		UserVO user = userDAO.getUser(vo);

		
		//화면 네비게이션
		ModelAndView mav = new ModelAndView();	
		if(user != null){
		   mav.setViewName("redirect:getBoardList.do");
		}else{
		   mav.setViewName("redirect:login.jsp");
		}
		return mav;
		
		
	}
}
