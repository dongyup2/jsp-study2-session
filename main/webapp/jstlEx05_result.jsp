<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다중 조건 처리 - choose, when, otherwise</title>
</head>
<body>
<h3>선택한 과일은....</h3>
<c:choose>
	<c:when test="${param.fruit == 1 }">
		<span style="color:red;">사과</span>
	</c:when>
	<c:when test="${param.fruit == 2 }">
		<span style="color:green;">메론</span>
	</c:when>
	<c:otherwise> <!--1,2 아니면 그외 모든것(switch case 문같은 느낌)  -->
		<span style="color:yellow;">바나나</span>
	</c:otherwise>
</c:choose>
</body>
</html>
