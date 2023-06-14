<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>자바 빈 프로퍼티 값 얻고 변경하기(getProperty, setProperty 액션태그)</h1>
<hr>
<jsp:useBean id="person" class="vo.Person"></jsp:useBean>
<h3>자바 빈 객체 생성 후 저장된 정보 출력하기</h3>
이름 : <jsp:getProperty property="name" name="person"/><br> 
나이 : <jsp:getProperty property="age" name="person"/><br>

<h3>정보 변경 후 변경된 정보 출력하기</h3>
<jsp:setProperty property="name" name="person" value="홍길동"/>
<jsp:setProperty property="age" name="person" value="23"/>
이름: <jsp:getProperty property="name" name="person"/><br>
나이: <jsp:getProperty property="age" name="person"/><br>
</body>
</html>