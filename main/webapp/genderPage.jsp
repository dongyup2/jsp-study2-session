<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   String gender = request.getParameter("gender");

   if (gender.equals("남성")) {
%>
<h1>남성 페이지입니다</h1>
<p>남성 페이지에 해당하는 내용 처리</p>
<% } else if (gender.equals("여성")) { %>
<h1>여성페이지입니다</h1>
<p>여성 페이지에 해당하는 내용 처리</p>
<%
   } else {
      // 성별 파라미터가 잘못된 경우 처리
      // 예: 에러 메시지 출력
}
%>
