<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="author" content="master">
  <meta name="description" content="예제">
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
    			<form method="post" action="joinAction.jsp">
    				<h2>회원가입</h2>
    				<div class="group">
    					<div class="form-group">
    						<div class="form-group-title">
    							<a class=userID>아이디</a></br>
    						</div>
	    					<input type="text" class="form-control"  name="userID" placeholder="아이디" maxlength="20"><br>
	    				</div>
						<div class="form-group">
							<div class="form-group-title">
								<a class=userID>비밀번호</a>
							</div>
							<input type="password" class="form-control"  name="userPassword" placeholder="비밀번호" maxlength="20"><br>
						</div>
						<div class="form-group">
							<div class="form-group-title">
								<a class=userID>비밀번호 확인</a>
							</div>
							<input type="password" class="form-control"  name="userPassword-confirm" placeholder="비밀번호확인" maxlength="20"><br>
						</div>
						<div class="form-group">
							<div class="form-group-title">
								<a class=userID>이름</a>
							</div>
							<input type="text" class="form-control"  name="userName" placeholder="이름" maxlength="20"><br>
						</div>
						<div class="form-group">
							<div class="form-group-title">
								<a class=userID>이메일</a>
							</div>
							<input type="email" class="form-control"  name="userEmail" placeholder="이메일" maxlength="30"><br>
						</div>
						<div class="form-group">
							<div class="form-group-title">
								<a class=userID>전화번호</a>
							</div>
							<input type="text" class="form-control"  name="userPhonenumber" placeholder="전화번호(-제외)" maxlength="11"><br>
						</div>
						<input type="submit" class="btn" value="회원가입"><br/>
					</div>
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
</body>
</html>