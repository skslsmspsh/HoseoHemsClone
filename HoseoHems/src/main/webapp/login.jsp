<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" background="resources/image/main_bg.jpg">
		<tbody>
			<tr>
				<td height="319">&nbsp</td>
			</tr>
			<tr>
				<td height="244" background="resources/image/main_bg02.jpg" style="background-position:center;" align="center">
					<table width="700" border="0" cellpadding="0" cellspacing="0" style="MARGIN-LEFT:70px">
						<tbody>
							<tr>
								<td colspan="2">
									<img src="resources/image/login_img01.gif" width="500" height="70">
								</td>
								<td>
									<a href="./login.jsp">
										<br>
										<img src="resources/image/login_img04_01.jpg" border="0">
									</a>
									<br>
									<br>
									&nbsp;
									<a href="">학생비밀번호찿기(불가)</a>
								</td>
							</tr>
							<tr>
								<td colspan="3">&nbsp;</td>
							</tr>
							<tr>
								<td width="300" rowspan="5">
									<table width="350px" height="150px" border="0" cellpadding="0" cellspacing="2" bgcolor="#afd9a8">
										<tbody>
											<tr>
												<td align="center" bgcolor="#f3f4f3">
													<table border="0" cellspacing="0" cellpadding="3">
														<tbody>
															<tr>
																<td height="28" colspan="3" style="padding-top:5px; text-align:left;">
																	<table border="0" cellpadding="0" cellspacing="0">
																		<tbody>
																			<tr>
																				<td>
																					<strong>
																						<font color="#008218">로그인 선택</font>
																					</strong>
																				</td>
																				<td width="10">&nbsp;</td>
																				<td width="20">
																					<input name="gubun" type="radio" value="a" checked="checked">
																				</td>
																				<td>
																					<strong>
																						<font color="#13a701">학생</font>
																					</strong>
																				</td>
																				<td width="10">&nbsp;</td>
																				<td width="20">
																					<input name="gubun" type="radio" value="b">
																				</td>
																				<td>
																					<strong>
																						<font color="#13a701">교직원</font>
																					</strong>
																				</td>
																				<td width="10">&nbsp;</td>
																				<td width="20">
																					<input name="gubun" type="radio" value="c">
																				</td>
																				<td>
																					<strong>
																						<font color="#13a701">조교</font>
																					</strong>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</td> 
															</tr>
															<tr>
																<td colspan="3" height="1">
																	<img src="resources/image/dot01.gif" width="100%" height="1">
																</td>
															</tr>
														<form action="login.do" method="post" name="f" onsubmit="test();">	
															<tr>
																<td height="26">아 이 디</td>
																<td>
																	<input type="text" name="id" id="id" style="width:140px; height:16px;">
																</td>
															</tr>
															<tr>
																<td height="26">비밀번호</td>
																<td>
																	<input type="password" name="pwd" id="pwd" style="width:140px; height:16px;">
																</td>
																<td>
																	<input type="submit" value="로그인">
																</td>
																<td>&nbsp;</td>
															</tr>
														</form>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
								<td>
									<a href="#">
										<img src="resources/image/login_img02_1.gif" border="0">
									</a>
								</td>
							</tr>
							<tr>
								<td>
									<img src="resources/image/login_img02_dot.gif">
								</td>
							</tr>
							<tr>
								<td>
									<a href="">
										<img src="resources/image/login_img02_2.gif" border="0">
									</a>
								</td>
							</tr>
							<tr>
								<td>
									<img src="resources/image/login_img02_dot.gif">
								</td>
							</tr>
							<tr>
								<td>
									<a href="">
										<img src="resources/image/login_img02_3.gif" border="0">
									</a>
								</td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;</td>
							</tr>
							
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center">
					<img src="resources/image/foot.gif">
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>