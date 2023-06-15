<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] itemlist = request.getParameterValues("item");
	pageContext.setAttribute("itemlist",itemlist);
%>
<h3>당신이 선택한 항목입니다.</h3>
<forEach var="item" items="${itemlist }">
	${item }<c:if test="${not status.last }"></c:if>
</forEach>
</body>
</html>


