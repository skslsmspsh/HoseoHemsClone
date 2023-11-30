package com.springbook.biz.board;

import java.util.List;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class BoardServiceClient {

	public static void main(String[] args) {
		//1. 컨테이너 구동
	      AbstractApplicationContext container = new GenericXmlApplicationContext("applicationConetext.xml");
	    
	    //2. 객체를 lookup
	      BoardService boardService=(BoardService) container.getBean("boardService");
	    
	    //3. 글 등록 테스트
	      BoardVO vo = new BoardVO();
	      vo.setTitle("Spring");
	      vo.setWriter("김민서");
	      vo.setContent("안녕 2A반");
	      boardService.insertBoard(vo);
	    
	    //4.
	      List<BoardVO> boardList = boardService.getBoardList(vo);
	      for(BoardVO board: boardList) {
	    	  System.out.println(board.toString());
	      }
	      
	    //5. spring 컨테이너 종료
	      container.close();  
	}

}
