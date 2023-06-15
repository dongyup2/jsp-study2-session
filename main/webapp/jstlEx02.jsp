<%@page import="vo.Person"%>
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
<c:set var="iTag">
	i 태그는 <i>기울임</i> 을 표현합니다.
</c:set>

<h4>기본 사용</h4>
<c:out value="${iTag }" />

<h4>escapeXml 속성</h4>
<c:out value="${iTag }" escapeXml="false" />

<h4>default 속성</h4>
<%
	Person p = null;
	pageContext.setAttribute("person", p);
%>
<c:out value="${param.name }" default="이름없음" /><br>
<c:out value="${p }" default="빈 문자열도 값입니다" />

<h4>remove</h4>
<c:remove var="iTag"/>
<c:out value="${itag }" dafault="없어요"/>
</body>
</html>
