<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// JSP: 자바로 작성한 서버 프로그램
// JAVA + HTML
request.setCharacterEncoding("utf-8"); // post 방식은 인코딩을 해야 한글이 깨지지 않음
String username = request.getParameter("username");
String useremail = request.getParameter("useremail");
String userid = request.getParameter("userid");
String userpwd = request.getParameter("userpwd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>form 연습하기!</h1>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><%=userid%></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=userpwd%></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=username%></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%=useremail%></td>
		</tr>
	</table>
</body>
</html>