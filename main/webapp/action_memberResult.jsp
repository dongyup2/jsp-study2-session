<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="vo.Member"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>

<h1>받은 데이터</h1>
번호 : <jsp:getProperty property="mno" name="member"/><br>
이름 : <jsp:getProperty property="name" name="member"/><br>
아이디 : <jsp:getProperty property="id" name="member"/><br>
패스워드 : <jsp:getProperty property="pw" name="member"/><br>
전화번호 : <jsp:getProperty property="phone" name="member"/><br>
</body>
</html>