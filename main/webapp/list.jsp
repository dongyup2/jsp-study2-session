l<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="jdbc.DBcon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//데이터베이스 회원테이블의 모든 데이터를 가져오기
	//DB 접속(Connection 객체)---> 쿼리실행(Statement/PreparedStatement)--> 결과받기(ResultSet)
	String query = "select * from member_tbl_02";
	Connection con = DBcon.getInstance().getConnection();
	PreparedStatement pstmt = con.prepareStatement(query);
	ResultSet rs = pstmt.executeQuery();
	//화면에 표형식으로 보여주기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>전체목록 페이지</h1>
<hr>
<table border="1px">
	<thead>
		<tr>
			<th>회원번호</th><th>회원번호</th><th>전화번호</th>
		</tr>			
	</thead>
	<tbody>
		<%
			while(rs.next()){			
		%>
			<tr>
				<td><%= rs.getInt("custno") %></td>
				<td><%= rs.getString("custname") %></td>
				<td><%= rs.getString("phone") %></td>
			</tr>
			<% 
			}
			%>
	</tbody>
</table>
</body>
</html>