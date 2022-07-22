<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content=t"text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">
  <title>모두의 레시피</title>
  
<!-- CSS STYLE-->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<!-- FONT -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<!--일반 평폰트 font-family:  'Gothic A1', sans-serif;-->
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@500&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet">
<!--영어 font-family: 'Abril Fatface', cursive; -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">
<!--한국어 궁서같은거 font-family: 'Song Myung', serif; -->

</head>
<body>
</body>
  <div id="wrap">
    <div id="header">
      <div class="container">
	      <div class="header">
	        <div class="header-title">
	        	<img alt="html" src="title.png" href="#">
	        </div>
	        <!-- header-title-->
	        <div class="header-menu">
	        	<a href="#" class="search"><span class="ir_pm">search</span></a>
	        	<a href="login.jsp" class="login">로그인</a>
	        	<a href="join.jsp" class="join">회원가입</a>
	        </div>
	       </div>
      </div>
    </div>
    <!-- //header -->
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
						<a href="#">tv</a>
					</div>
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
            				<a href="#">FOOD OF THE MONTH</a>
            			</div>
            			<div class="f_o_m-contents">
	            			
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
</body>
</html>
