package com.springbook.biz.user;

public interface UserService {
	//CRUD기능의 메소드 구현
	//회원등록
//	public void insertUser(UserVO vo);
	public UserVO getUser(UserVO vo);
}