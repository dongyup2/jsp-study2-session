<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String param1 = request.getParameter("name");
	String param2 = request.getParameter("age");

	String data1 = (String)pageContext.getAttribute("data1");
	String data2 = (String)request.getAttribute("data2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
param1(이름) : <%=param1 %><br>
param2(나이) : <%=param2 %><br>
page : <%=data1 %><br>
request : <%=data2 %><br>
</body>
</html>