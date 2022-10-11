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
	//setCharacterEncoding을 사용하여 인코딩을 설정
	//송수신에 관련된 코드를 작성하기전에 필수로 사용
	request.setCharacterEncoding("UTF-8");
	//get-set의 파라미터는 목적지 까지이기 때문에 그 이후로는 데이터 송수신이 불가능하다.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String msg = "id : " + id + ", pw : " + pw + ", name : " + name;
	/* response.sendRedirect("index.jsp?msg"+msg); */
%>
	<ul>
		<li>id : <%=id %></li>
		<li>pw : <%=pw %></li>
		<li>name : <%=name %></li>
	</ul>
	<a href="index.jsp?msg=<%=msg %>">되돌아가기</a>
</body>
</html>