<%@page import="vo.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL연습 5- 결과페이지</h1>
<hr>
<h3>Person 객체</h3>
<%
	Object Obj = request.getAttribute("personObj");
	Person p = (Person)Obj;
	String name = p.getName();
	int age = p.getAge();
%>
이름 : <%=name %><br>
나이 : <%=age %><br>
<hr>
<h3>EL로 값 받기</h3>
이름 : ${personObj.name }<br>
나이 : ${personObj.age	}<br>
<hr>
<h3>매개변수로 전달된 값</h3>
param1 : ${param.firstNum }<br>
param2 : ${param.secoundNum }<br>
param1 + param2 : ${param.firstNum + param.secoundNum }
</body>
</html>