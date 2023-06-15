<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다중 조건 처리 - choose, when, otherwise</title>
</head>
<body>
<h3>파라미터 보내기</h3>
<form action="jstlEx05_result.jsp">
	<select name="fruit">
		<option value="1">사과</option>
		<option value="2">메론</option>
		<option value="3">바나나</option>
	</select>
	<input type="submit" value="전송">
</form>
</body>
</html>
