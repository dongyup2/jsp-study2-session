<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>reEl2.jsp 페이지</h1>
<hr>
<jsp:useBean id="person" class="vo.Person" />
<jsp:setProperty property="*" name="person"/>

파라미터로 받은 Person 객체의 name : ${person.name}<br>
파라미터로 받은 Person 객체의 age : ${person.age}<br>
</body>
</html>