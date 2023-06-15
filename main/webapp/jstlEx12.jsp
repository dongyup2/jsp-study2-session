<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜형식 - fmt</title>
</head>
<body>
<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
\${now } : ${now }
			<fmt:formatDate value="${now }"/><br>
date : <fmt:formatDate value="${now }" type="date"/><br>
time : <fmt:formatDate value="${now }" type="time"/><br>
both : <fmt:formatDate value="${now }" type="both"/><br>
<br>
default : <fmt:formatDate value="${now }" type="both" dateStyle="default" timeStyle="default"/><br>
short : <fmt:formatDate value="${now }" type="both" dateStyle="short" timeStyle="short"/><br>
medium : <fmt:formatDate value="${now }" type="both" dateStyle="medium" timeStyle="medium"/><br>
long : <fmt:formatDate value="${now }" type="both" dateStyle="long" timeStyle="long"/><br>
full : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/><br>
<br>
pattern = "yyyy년 MM월 dd일 hh시 mm분 ss초"<br>
<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"/>
</body>
</html>