<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>배경색을 선택하세요</h1>
<form action="ColorTransServlet">
<ul>
	<li><input type="radio" name="color" value="1">빨강</li>
	<li><input type="radio" name="color" value="2">주황</li>
	<li><input type="radio" name="color" value="3">노랑</li>
	<li><input type="radio" name="color" value="4">초록</li>
	<li><input type="radio" name="color" value="5">파랑</li>
	<li><input type="radio" name="color" value="6">남색</li>
	<li><input type="radio" name="color" value="7">보라</li>
</ul>
	<button type="submit">전송</button>
</form>
</body>
</html>