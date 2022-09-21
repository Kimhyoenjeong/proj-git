<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모두의 레시피</title>
</head>
<body>
	<%
	    session.invalidate(); /* 이 페이지에 접속하면 session을 빼앗김 */
	%>
	<script>
	    location.href = 'index.jsp';
	</script>
</body>
</html>