<%@page import="jdbc.DBcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시작화면</title>
<style>
header {
    background-color: blue;
    text-align: center;
   	padding-top: 20px
}

 header h1 a {
    color: white;
    text-decoration: none;
  }

hr {
    border: none;
    border-top: 2px solid black;
}

nav {
    background-color: lightpink;
    text-align: center;
    padding: 10px;
}

nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}

nav li {
    display: inline;
    margin: 0 15px;
}

nav a {
    text-decoration: none;
    font-weight: bold;
}
h3{
	text-align: center;
}
table{
    margin-left: auto;
    margin-right: auto;
	
}

footer{
    background-color: blue;
    text-align: center;
    padding: 10px;
    color: white;
    font-size: 0.8em;
    border-top: 1px solid black;
    position: absolute;
    width: 100%;
    bottom: 0px;
}

</style>
</head>
<body>
    <header>
        <h1><a href="IEIP_index.jsp">할인점 주문프로그램 ver 1.0</h1>
        <hr>
    </header>
    <nav>
        <ul>
            <li><a href="IEIP_registerOrder.jsp">주문등록</a></li>
            <li><a href="IEIP_Orderlist.jsp">주문목록조회</a></li>
            <li><a href="IEIP_OrderStatusByStore.jsp">점포별주문현황</a></li>
            <li><a href="IEIP_ProductCodeSelect.jsp">제품코드조회</a></li>
            <li><a href="IEIP_index.jsp">홈으로</a></li>
        </ul>
    </nav>
    <h3>점포별 주문현황</h3>
    <section>
    	<table border="1px">
			<thead>
				<th>할인점코드</th><th>제품코드</th><th>제품명</th><th>주문총수량</th>
			</thead>
			<tbody>
			<%
				String sql = "SELECT shopno, pcode, pname, SUM(amount) total "
						   + "FROM v_orderlist "
						   + "GROUP BY shopno, pcode;";
				Connection conn = DBcon.getInstance().getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("shopno") %></td>
				<td><%=rs.getString("pcode") %></td>
				<td><%=rs.getString("pname") %></td>
				<td><%=rs.getString("total") %></td>
			</tr>   	
				<%
				}
				%>
			</tbody>
    	</table>
    </section>
    <footer>HRDKOREA Copyright&#169;2016 All right reserved. Human Resources Delvelopment Serive of Korea</footer>
</body>
</html>
