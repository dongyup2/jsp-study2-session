<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%
	String param = request.getParameter("data");
	String param2 = request.getParameter("data2");
	String param3 = request.getParameter("data3");
	%>
	파라미터 :
	<%=param%> --%>
	<%
		pageContext.setAttribute("name", "James");
		request.setAttribute("name", "홍길동");
		session.setAttribute("name","이미자");
		application.setAttribute("name","사미자");
	%>
	page영역 name(EL) : ${pageScope.name}<br>
	파라미터 name(EL) : ${requestScope.name }<br>
	session 속성 name(EL) : ${sessionScope.name }<br>
	application 속성 name(EL) : ${applicationScope.name}<br>
	파라미터 age(EL) : ${param.age }<br>
</body>
</html>