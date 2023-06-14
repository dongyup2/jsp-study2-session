<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="itemBean" class="vo.ItemBean"></jsp:useBean>
<jsp:setProperty property="*" name="itemBean"/>
<h1>수정한 상품 목록</h1>
<hr>
상품이름 : <jsp:getProperty property="prodname" name="itemBean"/><br>
상품가격 : <jsp:getProperty property="prodname" name="itemBean"/><br>
상품설명 : <jsp:getProperty property="prodname" name="itemBean"/><br>
</body>
</html>