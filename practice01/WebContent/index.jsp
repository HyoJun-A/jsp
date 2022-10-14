<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 페이지 디렉티브 : @ page(내용) -->
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹문서 테스트</title>
</head>
<body>
<%!
	//선언문 - 객체, 변수, 메소드 선언시
	//선언만 가능, 연산시 오류 
	int[] score = {50, 60, 80};
	String[] names = {"안", "이", "박"};
	int a = 20;
	int b = 30;
	Date now = new Date();
%>
<hr>
<% 
	//처리구문 -> 스크립트릿(scriptlet) : 자바코드
	//선언, 연산 가능
	int c;
	String name = "안효준";
	if(a>b){
		c = a;
	} else{
		c = b;
	}
	for(int d=0; d<10; d++){
		out.println(name+d);
	}
	out.println("c 출력은 표현식");
	out.println(now);
%>
<div id="result">
	<%=c %>
	<hr>
	<%=now %>
	<ul>
		<!-- for문을 따로 나눠서 사용하여 중간 값에 태그를 사용할 수 있다. -->
		<% 
			for(int i=0; i<score.length; i++){
		%>
		<li><%=names[i] %> : <%=score[i] %></li>
		<% 
			}
		%>
	</ul>
	<!-- get방식 : a태그를 사용하면 무조건 get방식 -->
	<a href="test01.jsp?id=ahj&pw=1234&name=안효준">회원 데이터 - get</a>
	<form action="test02.jsp" method="post" name="login_from">
		<input name="id" id="id" placeholder="아이디 입력"><br>
		<input type="password" name="pw" id="pw" placeholder="비밀번호 입력"><br>
		<input name="name" id="name" placeholder="이름 입력"><br>
		<input type="submit" value="값 전송"> &nbsp; &nbsp; &nbsp;
		<input type="reset" value="취소">
	</form>
	<div id="msg">
		<% 
			request.setCharacterEncoding("UTF-8");
			String msg = request.getParameter("msg");
 
			if(msg!=null){
		%>
			<strong><%=msg %>></strong>
		<% 
			}
		%>
	</div>
	<br><a href="login.jsp">로그인 창으로</a>
	<% 
		String id = (String) session.getAttribute("m_id");
		if(id != null){
	%>
		<p><%= id%>님이 로그인 하셨습니다.</p>
		<a href='logout.jsp'>로그아웃</a>
	<% 
		} else{
	%>
		<p>로그인 전 입니다.</p>
	<% 
		}
	%>
		
</div>

</body>
</html>