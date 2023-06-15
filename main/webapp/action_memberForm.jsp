<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
<jsp:useBean id="member" class="vo.Member" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>
<jsp:forward page="action_memberResult2.jsp"></jsp:forward>

<!-- <form action="action_memberResult.jsp" method="post"> -->
<h1>입력한 데이터</h1>
  번호: <input type="text" name="mno"><br>
  이름: <input type="text" name="name"><br>
  아이디: <input type="text" name="id"><br>
  비밀번호: <input type="password" name="pw"><br>
  휴대폰: <input type="text" name="phone"><br>
  <input type="submit" value="전송">
<input type="submit" value="전송">
<!-- </form> -->
</body>
</html>