<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="jdbc.DBcon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문등록</title>
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
    bottom: 0;
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
            <li><a href="">점포별주문현황</a></li>
            <li><a href="">제품코드조회</a></li>
            <li><a href="IEIP_index.jsp">홈으로</a></li>
        </ul>
    </nav>
    <section>
       <table border="1px">       
       	<thead>
       		<th>할인점코드</th>
       		<th>점포명</th>
       		<th>주문번호</th>
       		<th>주문일자</th>
       		<th>제품코드</th>
       		<th>제품명</th>
       		<th>주문수량</th>
       		<th>단가</th>
       		<th>소비자가격</th>
       		<th>할인가격</th>
       	</thead>
       <tbody>
        <%
        // 소수점이 없는 숫자 형식 
        DecimalFormat decimalFormat = new DecimalFormat("###,###");

        String sql = "SELECT TBL_ORDER_202101.*, TBL_SHOP_202101.SHOPNO, TBL_SHOP_202101.SHOPNAME, TBL_SHOP_202101.DISCOUNT, TBL_PRODUCT_202101.PCODE, TBL_PRODUCT_202101.PNAME, TBL_PRODUCT_202101.COST, " +
                "((TBL_ORDER_202101.AMOUNT * TBL_PRODUCT_202101.COST) - (TBL_ORDER_202101.AMOUNT * TBL_PRODUCT_202101.COST * TBL_SHOP_202101.DISCOUNT)) AS discounted_price, " +
                "(TBL_ORDER_202101.AMOUNT * TBL_PRODUCT_202101.COST) AS consumer_price " +
                "FROM green02.TBL_ORDER_202101 " +
                "JOIN green02.TBL_SHOP_202101 ON TBL_ORDER_202101.SHOPNO = TBL_SHOP_202101.SHOPNO " +
                "JOIN green02.TBL_PRODUCT_202101 ON TBL_ORDER_202101.PCODE = TBL_PRODUCT_202101.PCODE";



        Connection conn = DBcon.getInstance().getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
        %>
            <tr>
                <td><%= rs.getString("SHOPNO") %></td>
                <td><%= rs.getString("SHOPNAME") %></td>
                <td><%= String.format("%04d-%04d", rs.getInt("ORDERNO") / 10000, rs.getInt("ORDERNO") % 10000) %></td>
                <td><%= rs.getDate("ORDERDATE") %></td>
                <td><%= rs.getString("PCODE") %></td>
                <td><%= rs.getString("PNAME") %></td>
                <td><%= rs.getInt("AMOUNT") %></td>
                <td><%= decimalFormat.format(rs.getDouble("COST")) %></td>
                <td><%= decimalFormat.format(rs.getDouble("소비자가격")) %></td>
                <td><%= decimalFormat.format(rs.getDouble("할인가격")) %></td>
            </tr>
        <% } %>
        </tbody>
       </table>    
    </section>
    <footer>HRDKOREA Copyright&#169;2016 All right reserved. Human Resources Delvelopment Serive of Korea</footer>
</body>
</html>

