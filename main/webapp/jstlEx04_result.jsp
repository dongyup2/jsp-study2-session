<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>색상 적용 페이지</title>
</head>
<body>
<c:if test="${param.color == 1}">
	<h3>파라미터로 받은 색 : <span style="color: red">빨강</span></h3>
</c:if>
<c:if test="${param.color == 2}">
	<h3>파라미터로 받은 색 : <span style="color: green">초록</span></h3>
</c:if>
<c:if test="${param.color == 3}">
	<h3>파라미터로 받은 색 : <span style="color: blue">파랑</span></h3>
</c:if>
</body>
</html>