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
<c:set var="msg" value="Hello"/>
\${msg } = ${msg }<br>
<c:set var="age">
	30
</c:set>
\${age } = ${age } <hr>

<c:set var="person" value="<%= new vo.Person() %>"></c:set>
<c:set target="${person }" property="name" value="홍길동"></c:set>
<c:set target="${person }" property="age" value="23"></c:set>
\${person } = ${person }
<hr>
<c:set var="add" value="${10 + 5 }" />
\${add } = ${add }<br>
<c:set var="flag" value="${10 > 5 }" />
\${flag } = ${flag }<br>
<hr>

<a href="jstlEx02.jsp?name=aaa">jstlEx02 페이지에 파라미터 보내기</a>
</body>
</html>