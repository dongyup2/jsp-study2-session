<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션에 값 저장하기</title>
</head>
<body>
	<h1>Session에 값 저장하기(setAttribute)</h1>
	<hr>
	<%
		//session.setAttribute("id", "");
		//session.setAttribute("pw", "");
		session.setAttribute("age", 24);
		session.setAttribute("id", "홍길동");
	%>
</body>
</html>