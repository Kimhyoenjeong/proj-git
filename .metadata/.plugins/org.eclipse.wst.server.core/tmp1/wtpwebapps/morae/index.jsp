<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
    <%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content=t"text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">
  <title>모두의 레시피</title>

<!-- CSS STYLE-->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">

<script type="text/javascript">

</script>
</head>
<body>
</body>
<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>
  <div id="wrap">
    <div id="header">
      <div class="container">
	      <div class="header">
	        <div class="header-title">
	        	<img alt="html" src="img/title2.png" href="index.jsp">
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
						<div class="nav-under"></div>
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
					<div class="evaluation">
						<a href="bbs.jsp?boardID=1&pageNumber=1">맛집 평가</a>
					</div>
					<div class="bbs">
						<a href="bbs.jsp?boardID=2&pageNumber=1">자유 게시판</a>
					</div>
					<div class="safe">
						<a href="#">안심식당</a>
					</div>
				</div>
				<!-- //nav-menu -->
			</div>
		</div>

     </div>
     <!-- //nav -->
    <div id="contents">
	    <div id="content1">
	    	<div class="container">
	    	<div class="content1">
	            <div class="best">
	            	<div class="best-title">
	            		<a href="#">BEST RECIPES</a>
	            	</div>
	            	<div class="best-contents">
		            			
	            	</div>
	            </div>
	         </div>
	         </div>
	    </div>
        <!-- //content1 - best recipes -->
        <div id="content2">
            <div class="container">
            	<div class="content2">
            		<div class="f_o_m">
            			<div class="f_o_m-title">
            				<a href="monthFd.jsp">FOOD OF THE MONTH</a>
            			</div>
            			<div class="f_o_m-contents">
            			<input
            			  id='go_monthFd'
            			  type='img'
            			  onclick='newPage()'
            			  img='css/youtube.png' />
	            			<script>
	            			function newPage()  {
	            				  window.open('monthFd.jsp');
	            				}
	            			</script>
	            			<!-- <iframe src="monthFd.jsp" width="1780" height="980" scrolling="no" frameborder="0"onclick=""></iframe>-->
		            			
            			</div>
            		</div>
            	</div>
            </div>
        </div>
        <!-- //content2 - FOOD OF THE MONTH -->
        <div id="content3">
            <div class="container">
            	<div class="content3">
            		<div class="videos">
            			<div class="videos-title">
            				<a href="#">POPLUAR VIDEOS</a>
            			</div>
            			<div class="videos-contents">
	            			<iframe src="hotplace.html" width="1800" height="980" scrolling="no" frameborder="0"></iframe>
	            		</div>
            			</div>
            		</div>
            	</div>
            </div>
        </div>
        <!-- //content3 - POPLUAR VIDEOS -->
        <div id="content4">
            <div class="container">   	
            	<div class="content4">
            		<div class="safe_place">
            			<div class="safe_place-title">
            				<a href="#">SAFE PLACES</a>
            			</div>
            			<div class="safe_place-contents">
            				<iframe src="https://www.google.com/maps/d/embed?mid=1zZqPiaSVrUNsfU7MH7En0ptVQgzf5pk&ehbc=2E312F" width="1600" height="700"></iframe>
            			</div>
            		</div>
            	</div>
            </div>
        </div>
		<!-- //content4 - SAFE PLACES -->
            
    </div>
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
  </div>
    <!-- //wrap -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script> 
</body>
</html>