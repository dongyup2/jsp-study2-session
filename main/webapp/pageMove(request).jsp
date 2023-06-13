<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");

	pageContext.setAttribute("data1", "xxxxxx");
	request.setAttribute("data3", "yyyyyy");
	
	//request.getRequestDispatcher("pageMove_result.jsp?age=23").forward(request, response);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="pageMove_result.jsp">
	<jsp:param value="33" name="age"/>
</jsp:forward>
</body>
</html>