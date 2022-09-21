<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.lang.Math" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script>

	function goPopup(){
		var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	}
	function jusoCallBack(roadAddrPart1){
		document.form.map.value = roadAddrPart1;
	}
</script>
<title>모두의 레시피</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1; //기본페이지
		if (request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber")); //파라미터는 꼭 이런식으로 바꿔줘야됨
		}
		 int boardID = 0;
			if (request.getParameter("boardID") != null){
				boardID = Integer.parseInt(request.getParameter("boardID"));
			}
	%>
	<div id="header">
      <div class="container">
	      <div class="header">
	        <div class="header-title">
	        	<img alt="html" src="img/title.png" href="#">
	        </div>
	        <!-- header-title-->
	        <%
	        	if(userID == null){
	        %>
	        <div class="header-menu">
	        	<a href="#" class="search"><span class="ir_pm">search</span></a>
	        	<a href="login.jsp" class="login">로그인</a>
	        	<a href="join.jsp" class="join">회원가입</a>
	        </div>
	        <% 
				} else {
			%>
			<div class="header-menu">
	        	<a href="#" class="search"><span class="ir_pm">search</span></a>
	        	<a href="jjimBbs.jsp?pageNumber=1">찜목록</a>
              	<a href="logout.jsp">로그아웃</a>
	        </div>
	        <%
				};
			%>
	       </div>
	       <!-- class_header -->
      </div>
    </div>
    <!-- //id_header -->
     <div id="nav">
		<div class="container">
			<div class="nav">
				<div class="nav-menu">
					<div class="recommend">
						<a href="#">추천</a>
					</div>
					<div class="popluar">
						<a href="#">인기</a>
						<!-- <div class="nav-under"></div> -->
					</div>
					<div class="month">
						<a href="monthFd.jsp">이달의 음식</a>
					</div>
					<div class="tv">
						<a href="video.jsp">VIDEO</a>
					</div>
					<% if (boardID == 1){ %>
					<div class="evaluation">
						<a href="bbs.jsp?boardID=1&pageNumber=1">맛집 평가</a>
						<div class="nav-under"></div>
					</div>
					<div class="bbs">
						<a href="bbs.jsp?boardID=2&pageNumber=1">자유 게시판</a>
					</div>
					<%} else if(boardID == 2){ %>
					<div class="evaluation">
						<a href="bbs.jsp?boardID=1&pageNumber=1">맛집 평가</a>
					</div>
					<div class="bbs">
						<a href="bbs.jsp?boardID=2&pageNumber=1">자유 게시판</a>
						<div class="nav-under"></div>
					</div>
					<% } %>
					<div class="safe">
						<a href="#">안심식당</a>
					</div>
					<div class="sitemap">
						<a href="#">사이트맵</a>
					</div>
				</div>
				<!-- //nav-menu -->
			</div>
		</div>

	<div class="container">
		<div class="row">
		<form name = "form" method="post" encType = "multipart/form-data" action="writeAction.jsp?boardID=<%=boardID%>&keyValue=multipart">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="5" style="background-color: #eeeee; text-align: center;">게시판 글쓰기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="5" ><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
						</tr>
					<%if(boardID==1){ %>
						<tr>
							<td colspan="4" ><input type="text" id="map" name="map" class="form-control" placeholder="주소"/></td>
							<td colspan="1"><input type="button" class="btn btn-secondary" onClick="goPopup();" value="주소 검색"/></td>
						</tr>
					<%} %>
						<tr>
							<td colspan="5" ><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height:350px;"></textarea></td>
						</tr>
						<tr>
							<td colspan="5" ><input type="file" name="fileName"></td>
						</tr>
					</tbody>
				</table>
					<input type="submit" class="btn btn-warning pull-right" value="글쓰기">
		</form>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script> 
</body>
</html>