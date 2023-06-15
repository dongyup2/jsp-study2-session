<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다중 파라메터 보내기</title>
</head>
<body>
 <form action="jstlEx08_result.jsp" method="post">
 	<input type="checkbox" value="가방" name="item">가방
 	<input type="checkbox" value="신발" name="item">신발
 	<input type="checkbox" value="반지" name="item">반지
 	<input type="checkbox" value="팔찌" name="item">팔찌
 	<input type="checkbox" value="시계" name="item">시계
 	<input type="checkbox" value="벨트" name="item">벨트
 	<input type="submit" value="전송">
 </form>
</body>
</html>