<%@page import="vo.Person"%>
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
	request.setAttribute("personObj", new Person("홍길동",33));
%>
<jsp:forward page="elEx05_result.jsp">
	<jsp:param value="10" name="firstNum"/>
	<jsp:param value="20" name="secoundNum"/>
</jsp:forward>
</body>
</html>