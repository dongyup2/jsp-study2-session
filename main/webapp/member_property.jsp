<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>자바 프로퍼티로 값 넣기 연습</h1>
<hr>
<jsp:useBean id="Member" class="vo.Member"></jsp:useBean>
<form method="post">
  번호: <input type="text" name="mno"><br>
  이름: <input type="text" name="name"><br>
  아이디: <input type="text" name="id"><br>
  비밀번호: <input type="password" name="pw"><br>
  휴대폰: <input type="text" name="phone"><br>
  <input type="submit" value="전송">
</form>
<%
	if(){
		if(request.getParameter("mno") != null) {
			Member.setMno(Integer.parseInt(request.getParameter("mno")));
		}
		if(request.getParameter("name") != null) {
			Member.setName(request.getParameter("name"));
		}
		if(request.getParameter("id") != null) {
			Member.setId(request.getParameter("id"));
		}
		if(request.getParameter("pw") != null) {
			Member.setPw(request.getParameter("pw"));
		}
		if(request.getParameter("phone") != null) {
			Member.setPhone(request.getParameter("phone"));
		}
	}else{
%>
	alert();
<% 
	}
%>		
	
<%-- <jsp:setProperty property="mno" name="Member" value="1"/><br>
<jsp:setProperty property="name" name="Member" value="홍길동"/><br>
<jsp:setProperty property="id" name="Member" value="id1"/><br>
<jsp:setProperty property="pw" name="Member" value="pw1"/><br>
<jsp:setProperty property="phone" name="Member" value="010-1111-1111"/><br> --%>
<hr>
<h3>값 넣은후</h3>
번호: <jsp:getProperty property="mno" name="Member"/><br>
이름: <jsp:getProperty property="name" name="Member"/><br>
아이디:<jsp:getProperty property="id" name="Member" /><br>
비밀번호:<jsp:getProperty property="pw" name="Member" /><br>
휴대폰:<jsp:getProperty property="phone" name="Member" /><br>
<hr>
</body>
</html>