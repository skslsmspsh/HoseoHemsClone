<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
 <link href="resources/css/board.css" rel="stylesheet" type="text/css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    select{width:180px;height:25px;font-size:14px;}
    option{background:#eee;}
    input[type=text]{
    	width:600px;
    }

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
			<div>	
				<form action="insertBoard.do">
				<table>
				  <tr>
					<td bgcolor=#dbf2b6>제목</td>
					<td><input type=text name=title></td>
				  </tr>
				  <tr>
                      <td colspan="2" height="2"></td></tr>
				  <tr>
					<td bgcolor=#dbf2b6>작성자</td>
					<td><input type=text name=writer></td>
				  </tr>
				  <tr>
                      <td colspan="2" height="2"></td></tr>
				  <tr>
					<td bgcolor=#dbf2b6>내용</td>
					<td><textarea name="content" rows="10" cols="77"></textarea></td>
				  </tr>
				</table>
				  <div class="button" align="right">
					 <input type="image" src="resources/image/btn_save.gif" style="vertical-align:bottom" >
					 
					 <a href="getBoardList.do">
					 <img class="img" src="resources/image/btn_list.gif" style="vertical-align:bottom" alt=""></a>
				  </div>
				</form>
			</div>	
				
        </div>
        
      </div>
      
    </div>

  </div>


</body>
</html>