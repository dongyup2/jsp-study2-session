<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 페이지</title>
</head>
<body>
   <form action="SecurityNumberRequest.jsp" method="post">
   <!-- <form action="SecurityNumberSession.jsp" method="post"> -->
      <label>이름<input type="text" name="username"></label><br>
      <label>주민번호(7자리)<input type="text" name="snumber"></label><br>
      <button type="submit">입장</button>
   </form>
</body>
</html>
