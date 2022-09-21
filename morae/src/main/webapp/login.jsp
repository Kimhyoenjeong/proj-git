<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta http-equiv="Content-Type" content=t"text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">
  <title>MOREA</title>
  
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
              <a href="index.jsp" class="home">home</a>
           </div>
          </div>
      </div>
    </div>
    <!-- //header -->
     <div id="nav">
      <div class="container">
         <div class="nav">
            <div class="nav-menu">
               <div class="popluar">
                  <a href="#">인기</a>
               </div>
               <div class="month">
                  <a href="#">이달의 음식</a>
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
    	<div class="container">
    		<div class="signup">
    			<form method="post" action="loginAction.jsp">
    			<div class="signup-title">
    				<h2>로그인</h2>
    			</div>
    				<div class="group">
    					<div class="form-group">
	    					<input type="text" class="form-control"  name="userID" placeholder="아이디" maxlength="20"><br>
	    				</div>
						<div class="form-group">
							<input type="password" class="form-control"  name="userPassword" placeholder="비밀번호" maxlength="20"><br>
						</div>
						<div class="find">
							<a href="findID">아이디 찾기</a> <a> | </a> <a href="findPW">비밀번호 찾기</a> <a> | </a> <a href="join.jsp">회원가입</a> <br><br>
						</div>
					</div>
					<input type="submit" class="btn" value="로그인"><br/>
    			</form>
    		</div>
    	</div>
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