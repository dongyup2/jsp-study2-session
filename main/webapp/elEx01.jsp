<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("name", "홍길동");
	request.getRequestDispatcher("elEx02.jsp?age=25").forward(request,response);
%>
</body>
<%-- <%
	String s = "Hello~~";
	pageContext.setAttribute("greet", "Hello...pageContext");
	session.setAttribute("greet", "Hello...pageContext");
%>
<%= "Hello..표현식" %><br>
${"Hello...EL"}<br>
<%
	out.print("Hello..스크립틀릿<br>");
%>
<%= s + "표현식 변수사용" %><br>
EL에서 자바 변수 출력 : ${s }<br>
EL로 페이지영역 데이터 출력: ${greet }<br> --%>
<%-- 참/거짓 ${(10 > 0 || 10 > 0 }<br> --%>
<%-- 10 == 10 : ${10 eq 10 }<br>
10 == 5 : ${10 eq 5 }<br>
10 > 5 : ${10 gt 5 }<br>
10 < 5 : ${5 gt 10 }<br>
10 != 9 : ${10 ne 9 }<br>
10 >= 9 :${10 ge 9 }<br>
9 <= 10 : ${9 le 10 }<br>
null : ${null }<br>
<%
	String s = null;
%>
s는 null : ${empty s } <b> --%>
</html>