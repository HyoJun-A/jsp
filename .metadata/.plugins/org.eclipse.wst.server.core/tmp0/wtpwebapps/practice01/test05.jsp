<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-reponse</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if(id=="admin" && pw == "1234"){
		//만약, 아이디와 비밀번호가 맞으면, 로그인 처리하고, login_ok.jsp로 이동
		response.sendRedirect("login_ok.jsp");
	} else {
		//일치하지 않으면, 원래 페이지인 loginForm.html로 이동
		response.sendRedirect("loginForm.html");
	}
	%>
</body>
</html>