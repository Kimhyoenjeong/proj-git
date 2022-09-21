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
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/reset.css">

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

				</div>
				<!-- //nav-menu -->
			</div>
		</div>

		<div id="contents">
			<div id="bbs_contents">
				<div class="container">
					<div class="bbs_contents">
					<% if (boardID == 1){ %>
						<div class="bbs_title">
							<a>| Restaurant evaluation |</a>
	            			<div class="bbs-title-info">
	            				<a> 다른 사람들에게 자신이 아는 맛집을 공유해주세요. </a>
	            			</div>
						</div>
					<%} else if(boardID == 2){ %>
						<div class="bbs_title">
							<a>| FREE BOARD |</a>
	            			<div class="bbs-title-info">
	            				<a> 자유롭게 글을 쓰는 곳입니다. </a>
	            			</div>
						</div>
					<% } %>
						<div class="search-contents">
						<form class="search" name = "p_search">
							<input type="button" class="search-btn" value="검색" onclick="nwindow(<%=boardID%>)"/>
						</form>
						</div>		
						<div class="row">
						<table class="table" >
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<%
									BbsDAO bbsDAO = new BbsDAO();
									ArrayList<Bbs> list = bbsDAO.getList(boardID, pageNumber);
									for(int i=0; i<list.size(); i++){	
								%>
								<tr>
									<td><%= list.get(i).getBbsID() %></td>
									<td><a href="view.jsp?boardID=<%=boardID%>&bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></a></td>
									<td><%= list.get(i).getUserID() %></td>
									<td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) + "시 " + list.get(i).getBbsDate().substring(14,16) + "분" %></td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
								
						<a href="write.jsp?boardID=<%=boardID%>" class="btn">글쓰기</a>
					</div>
					</div>
				</div>
			</div>
		<div class=container style="text-align:center">
			<%
				BbsDAO bbsDAO1 = new BbsDAO();
				int pages = (int) Math.ceil(bbsDAO1.getCount(boardID)/10)+1;
				for(int i=1; i<=pages; i++){ %>
					<button type="button" class="btn btn-secondary" onclick="location.href='bbs.jsp?boardID=<%=boardID %>&pageNumber=<%=i %>'"><%=i %></button>
				<%} %>
		</div>
	</div>
	
	<script>
	function nwindow(boardID){
		window.name = "parant";
		var url= "search.jsp?boardID="+boardID;
		window.open(url,"","width=250,height=200,left=300");
	}
</script>
    <!-- //footer -->
    <div id="footer">
    	<hr>
    	<div class="container">
            <div class="footer">
            	<div class="info">
            	
            	<ul>
            			<li><a href="#">사이트 도움말</a></li>
                        <li><a href="#">사이트 이용약관</a></li>
                        <li><a href="#">사이트 운영규칙</a></li>
                        <li><a href="#"><strong>개인정보취급방침</strong></a></li>
                        <li><a href="#">책임의 한계와 법적고지</a></li>
                        <li><a href="#">게시중단요청 서비스</a></li>
                        <li><a href="#">고객센터</a></li>
            		</ul>  
            	</div>
            	<div class="maker">
            		       	
            	</div>
            </div>
        </div>
    </div>
	<!-- //footer -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script> 
</body>
</html>