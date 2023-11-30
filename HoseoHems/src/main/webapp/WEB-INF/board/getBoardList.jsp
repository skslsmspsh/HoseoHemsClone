<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%@page import="com.springbook.biz.board.BoardVO"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
 <link href="resources/css/board.css" rel="stylesheet" type="text/css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
 
<%
	//DB 연동

	//BoardVO vo = new BoardVO();
	//BoardDAO boardDAO = new BoardDAO();
	//List<BoardVO> boardList = boardDAO.getBoardList(vo); 
	List<BoardVO>boardList = (List)session.getAttribute("boardList");
	
%>
<script>
	
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    select{width:180px;height:25px;font-size:14px;}
    option{background:#eee;}
</style>
  
</head>

<body>
	<div class="main">
    <div class="top">
      <div class="top-left">
        <img class="img" src="resources/image/logo.jpg" alt="logo">
      </div>
      <div class="backcolor">
        <div class="top-right">
          <img class="img rounded" src="resources/image/main.jpg" alt="">
          <img class="img rounded" src="resources/image/mains.jpg" alt="">
        </div>
      </div>
    </div>

    <div class="middle">
        <div class="middle-top">
          <img class="img" src="resources/image/녹색.jpg" alt="" width="240">
          <div class="middle-top-left">
            <select name="study" id="">
              <option selected value="">백엔드 프로그래밍</option>
              <option value="">데이터통신</option>
              <option value="">프론트엔드</option>
              <option value="">인공지능</option>
              <option value="">전산영어</option>
            </select>
          </div>
          <div class="middle-top-right">
            <span>학과: 컴퓨터공학</span>
            <span>이름: 원규희,김민서</span>
            <span>학기: 2022년도 2학기</span>
            <a href="logout.do">
            <img class="img" src="resources/image/logout.gif" alt="">
            </a>
          </div>
        </div>
    </div>

    <div class="bottom">
      <div class="bottom-left-sum">
        <div class="bottom-menu">
          <img class="img rounded" src="resources/image/강의실메뉴.jpg" alt="">
        </div>
        <div class="bottom-left">
          <a href="">
          <img class="img rounded" src="resources/image/강의공지.jpg" alt="">
          </a>
          <a href="">
          <img class="img rounded" src="resources/image/강의계획.jpg" alt="">
          </a>
          
          <img class="img rounded" src="resources/image/점선.jpg" alt="">

          <a href="">
          <img class="img rounded" src="resources/image/학습자료실.jpg" alt="">
          </a>
          <a href="">
          <img class="img rounded" src="resources/image/과제.jpg" alt="">
          </a>
          <a href="">
          <img class="img rounded" src="resources/image/자유.jpg" alt="">
          </a>
        </div>
      </div>

      <div class="bottom-right">
        <div class="bottom-right-top">
          <h2>백엔드 프로그래밍</h2>
          <hr>
        </div>
        <div class="bottom-right-bottom">
				<table class="main-top" align="center">
					<tr class="main-top-top">
						<td  width="10%">번호</td>
						<td  width="30%">제목</td>
						<td  width="20%">작성자</td>
						<td  width="15%">등록일</td>
						<td  width="10%">조회수</td>
						
					</tr>
					
			<c:forEach items="${boardList}" var="board" varStatus="status">
			<tr>
				<td>${fn:length(boardList)-status.index}</td>
				<td><a href="getBoard.do?seq=${board.seq}">
			                        ${board.title}</a></td>
				<td>${board.writer}</td>
				<td>${board.regDate}</td>
				<td>${board.cnt}</td>
				<tr>
					<td class="table_tr" colspan="5" >
					</td>
				</tr>
			</tr>
			
			</c:forEach>
				</table>
				<hr>
				<div align="right">
				<a href="insertBoard.jsp">
					<img class="img rounded" src="resources/image/등록.gif" alt="">
				</a>
				</div>
        </div>
        
      </div>
    </div>

  </div>


	
</body>
</html>	
		
		
		
		
