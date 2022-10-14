<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		//invalidate() : 값 초기화
		session.invalidate();
		//sendRedirect() : 위치 변경
		response.sendRedirect("index.jsp");
	%>
</body>
</html>