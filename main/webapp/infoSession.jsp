<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션 정보를 얻어오는 메소드 사용하기</h1>
<hr>
<%
	String id_str = session.getId();
	long lastTime = session.getLastAccessedTime();
	long createdTime = session.getCreationTime();
	long time_used = (lastTime - createdTime)/60000;
	session.setMaxInactiveInterval(10);//세션의 유효시간 바꾸기
	int inactive = session.getMaxInactiveInterval()/60;
	boolean b_new = session.isNew();
%>
[1] 세션 id [<%= session.getId() %>]입니다.<br><hr>
[2] 당신이 웹 사이트에 머문 시간은 <%= time_used %> 분입니다.<br><hr>
[3] 세션의 유효 시간은 <%= inactive %> 분입니다.<br><hr>
[4] 세션이 새로 만들어졌나요?<br>
<%
	if(b_new){
		out.print("예! 새로운 세션을 만들었습니다.");
	}else{
		out.print("아니오! 새로운 세션을 만들지 않았습니다.");
	}
%>


</body>
</html>