<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - remove</title>
</head>
<body>
<c:set var="txt1" value="page-txt" />
<c:set var="txt2" value="request-txt" scope="request"/>
<c:set var="txt3" value="session-txt" scope="request" />
<c:set var="txt3" value="application-txt" scope="application" />


<h4>txt 변수 값 출력</h4>
<c:out value="${sessionScope.txt }"/><br>
<c:remove var="txt" scope="session" />
<h4>session 값 출력</h4>
<c:out value="${sessionScope.txt }"/> <br>

</body>
</html>
