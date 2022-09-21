<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="user.UserDAO" %>
 <%@ page import="java.io.PrintWriter" %> <!-- java script 문장을 작성하기 위해  -->
 <% request.setCharacterEncoding("UTF-8");%> <!-- 건너오는 데이터를 모두 utf-8로 받을 수 있도록 -->
 <jsp:useBean id="user" class="user.User" scope="page"/> <!-- 현재 페이지에서만 beans를 사용할 수 있도록 -->
 <jsp:setProperty name="user" property="userID" /> <!-- 로그인페이지에서 가져온 userID를 한명의 사용자의 userID로 넣어줌 -->
 <jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>모두의 레시피</title>
</head>
<body>
	<%
		UserDAO userDAO = new UserDAO();
		int result =userDAO.login(user.getUserID(), user.getUserPassword());
		if (result == 1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
			
		}else if (result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()"); //이전페이지로 사용자를 돌려보냄 -> login.jsp로
			script.println("</script>");
			
		}else if (result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()"); //이전페이지로 사용자를 돌려보냄 -> login.jsp로
			script.println("</script>");
			
		}else if (result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('오류가 발생했습니다.')");
			script.println("history.back()"); //이전페이지로 사용자를 돌려보냄 -> login.jsp로
			script.println("</script>");
		}
	%>
</body>
</html>