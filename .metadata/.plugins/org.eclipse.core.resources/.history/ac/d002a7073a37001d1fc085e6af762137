<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userPassword_confirm" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userPhonenumber" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모두의 레시피</title>
</head>
<body>
	<%
		String userID = null; 
	    if(session.getAttribute("userID") != null )
	    {
	        userID = (String) session.getAttribute("userID");
	    }
	    if(userID != null)
	    {
	        PrintWriter script = response.getWriter();
	        script.println("<script>");
	        script.println("alert('이미 로그인이 되어있습니다.')");
	        script.println("location.href = 'index.jsp'");
	        script.println("</script>");
	    }
		if(user.getUserID() == null || user.getUserPassword() == null || user.getUserPassword_confirm() == null 
		|| user.getUserName() == null || user.getUserEmail() == null || user.getuserPhonenumber() == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
		} else {
			UserDAO userDAO = new UserDAO();
	    	int result = userDAO.join(user);
	    	if (result == -1){
	            session.setAttribute("userID",user.getUserID()); 
	            PrintWriter script = response.getWriter();
	            script.println("<script>");
	            script.println("alert('이미 존재하는 아이디 입니다.')");
	            script.println("history.back()");    // 이전 페이지로 사용자를 보냄
	            script.println("</script>");
	        } 
	    	else {
	    		session.setAttribute("userID",user.getUserID()); 
	            PrintWriter script = response.getWriter();
	            script.println("<script>");
	            script.println("location.href = 'index.jsp'");
	            script.println("</script>");
	        }
		}
		
	%>
	
</body>
</html>