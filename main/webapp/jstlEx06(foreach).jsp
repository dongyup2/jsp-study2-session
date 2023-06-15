<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문 - foreach</title>
</head>
<body>
<%
	String[] movieList = {"타이타닉", "시네마천국","혹성탈출", "킹콩"};
	pageContext.setAttribute("movieList", movieList);
%>
<h3>index, count 사용하기</h3>
<table border="1" style="width:100%; text-align: center;">
	<tr>
		<th>index</th><th>count</th><th>title</th>
	</tr>
<!--for(String movie : movieList) 같은느낌이다. 하나씩돌면서 movieList의 값을 movie에 넣어준다 -->
	<c:forEach var="movie" items="${movieList }" varStatus="status">
	<tr>
		<td>${status.index }</td><!--인덱스의 번호  -->
		<td>${status.count }</td><!--인덱스의 순서?  -->
		<td>${movie }</td><!-- movie값 출력  -->
	</tr>
	</c:forEach>
</table>
<hr>
<h3>first, last 사용하기</h3>
<c:forEach var="movie" items="${movieList }" varStatus="status">
		<c:choose>
			<c:when test="${status.first }">
				<li style="font-weight: bold; color: red;">${movie }</li>
			</c:when>
			<c:when test="${!status.last }"><%--not이나 ! 같다 --%>
				<li style="font-weight: bold; color: blue;">${movie }</li>
			</c:when>
			<c:when test="${status.count == 2 }">
				<li style="font-weight: bold; color: green;">${movie }</li>
			</c:when>
			<c:when test="${status.count == 3 }">
				<li style="font-weight: bold; color: orange;">${movie }</li>
			</c:when>
			<c:otherwise>
			<li>${movie }</li>
		</c:otherwise>
	</c:choose>
</c:forEach>
</body>
</html>
