<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 받기</title>
</head>
<body>
<% 
	//get-set의 파라미터는 목적지 까지이기 때문에 그 이후로는 데이터 송수신이 불가능하다.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String msg = "id : " + id + ", pw : " + pw + ", name : " + name;
	/* response.sendRedirect("index.jsp?msg"+msg); */
	String mem[][] = new String[100][2];
	int count = 0;
	if(id != null && pw != null && name != null){
		mem[count][0] = id;
		mem[count][1] = pw;
		count++;
	}
%>
	<ul>
		<li>id : <%=mem[0][0] %></li>
		<li>pw : <%=mem[0][1] %></li>
		<li>name : <%=name %></li>
	</ul>
	<a href="index.jsp">되돌아가기</a>
</body>
</html>