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
<h1>EL:표현언어</h1>
<hr>
표기법 : \${ }<br>
10+2 : ${10+2 }<br>
hello : ${hello }<br>

4대저장소 : page, request, session, application<br>
<%-- <%
	vo.Person p = new vo.Person("홍길동", 33);
	pageContext.setAttribute("person", p);
%> --%>
<form action="reEl2.jsp" method="post">
<jsp:useBean id="p2"class="vo.Person" scope="request" /> <%-- <% Person p2 = new Person() %> 둘이 같다.--%>
<jsp:setProperty property="name" name="p2" value="임꺽정"/>
<jsp:setProperty property="age" name="p2" value="43"/>
<jsp:forward page="reEl2.jsp" />
</form>
<hr>
<%-- person객체 이름 : ${person.name}<br>
person객체 나이 : ${person.age}<br>
<hr>
userBean Person 객체 이름 : ${p2.name }<br><!-- 맴버변수의 get,set으로 동작하는것 (private이니까) -->
userBean Person 객체 나이 : ${p2.age }<br>
 --%>
</body>
</html>
