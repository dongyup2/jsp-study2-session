<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Session에 값 가져오기(getAttribute)</h1>
	<hr>
	<%
		String id = (String)session.getAttribute("id");
		String pw = (String)session.getAttribute("pw");
		Integer age = (Integer)session.getAttribute("age");
	%>
	id: <%=id %><br>
	pw: <%=pw %><br>
	age: <%=age %><br>
</body>
</html>