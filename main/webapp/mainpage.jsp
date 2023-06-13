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
	String member = (String)session.getAttribute("id");
%>
	<%=member %>님. 로그인 되었습니다. 반갑습니다.
	<a href="">로그아웃</a>
</body>
</html>