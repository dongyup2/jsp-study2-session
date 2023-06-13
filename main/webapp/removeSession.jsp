<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션 지우기</h1>
<hr>
<%
	/* session.removeAttribute("id");
	session.removeAttribute("pw");
	session.removeAttribute("age");
	 */
	session.invalidate();
%>
</body>
</html>