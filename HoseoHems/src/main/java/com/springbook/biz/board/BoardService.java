package com.springbook.biz.board;

import java.util.List;

public interface BoardService {
	//글 등록
	void insertBoard(BoardVO vo);
	//글 수정
	void updateBoard(BoardVO vo);
	//글 삭제
	void deleteBoard(BoardVO vo);
	//글 상세조획
	BoardVO getBoard(BoardVO vo);
	//글 목록조회
	List<BoardVO> getBoardList(BoardVO vo);
	
}
