<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="jdbc.DBcon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   Connection conn = DBcon.getInstance().getConnection();
	String sql = "SELECT color FROM tbl_color";
   PreparedStatement pstmt = conn.prepareStatement(sql);
   ResultSet rs = pstmt.executeQuery();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>배경색을 선택하세요</h1>
    <form id="colorForm" action="ColorTransServlet" method="get">
        <select id="colorSelect" name="color" onchange="submitColor()">
    <option value="">색상 선택</option>
    <% while (rs.next()) {
        String colorName = rs.getString("color");
        out.println("<option value='" + colorName + "'>" + colorName + "</option>");
    } %>
</select>

        <input type="submit" value="전송">
    </form>
</body>
<script>
   function submitColor() {
       var sel = document.getElementById("colorSelect");
       var bg_color = sel.options[sel.selectedIndex].text;
       document.body.style.backgroundColor = bg_color;
   }
</script>
</html>
