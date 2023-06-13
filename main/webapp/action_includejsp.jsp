<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="action_head.jsp">

<h1>본문영역()action_include.jsp</h1>
<%
	String data = (String)pageContext.getAttribute("x");
%>
페이지영역의 데이터 x: 
</jsp:include>
</body>
</html>