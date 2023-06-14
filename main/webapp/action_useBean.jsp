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
<h1>자바 빈 객체 생성하기(useBean 액션태그)</h1>
<hr>
<jsp:useBean id ="person" class="vo.Person"></jsp:useBean>
<%
	vo.Person person1 = new vo.Person();
%>
<h3># 자바 빈 객체 생성후 저장된 정보 출력하기</h3>
이름 : <%= person.getName() %><br>
나이 : <%= person.getAge() %><br>
<hr>
<h3>정보 변경한 후 변경된 정보 출력하기</h3>
<%
	person.setName("홍길동");
	person.setAge(27);
%>
	이름 : <%= person.getName() %><br>
	나이 : <%= person.getAge() %><br>
</body>
</html>