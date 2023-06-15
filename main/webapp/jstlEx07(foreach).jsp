<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문 - foreach 2</title>
</head>
<body>
<h3>begin, end 사용하기</h3>
<table border="1px">
	<tr>
		<th>index</th><th>count</th><th>cnt</th>
	</tr>
<c:forEach var="cnt" begin="1" end="10" step="2" varStatus="status">
	<tr>
		<td>${status.index }</td>
		<td>${status.count }</td>
		<td>${cnt }</td>
	</tr>
</c:forEach>
</table>
</body>
</html>