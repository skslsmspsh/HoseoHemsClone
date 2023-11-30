package com.springbook.biz.board;

import java.util.List;

public interface BoardService {
	//�� ���
	void insertBoard(BoardVO vo);
	//�� ����
	void updateBoard(BoardVO vo);
	//�� ����
	void deleteBoard(BoardVO vo);
	//�� ����ȹ
	BoardVO getBoard(BoardVO vo);
	//�� �����ȸ
	List<BoardVO> getBoardList(BoardVO vo);
	
}
