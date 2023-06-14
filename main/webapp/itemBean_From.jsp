<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
textarea {
	width: 300px;
	height: 150px;
	padding: 10px;
	font-size: 14px;
	border: 1px solid #d0d0d0;
    border-radius: 5px;
}
</style>
</head>
<body>
<h1>상품 넣기</h1>
<hr>
<form action="itemBean_result.jsp" method="post">
상품이름 : <input type="text" name="prodname"><br>
상품가격 : <input type="text" name="price"><br>
상품설명 : <textarea type="text" name="desc"></textarea><br>
<input type="submit" value="전송">
</form>
</body>
</html>