<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout_member</title>
</head>
<body>
	
	<%
		session.invalidate(); //세션 무효화
		response.sendRedirect("loginMember.jsp");
	%>
	
</body>
</html>