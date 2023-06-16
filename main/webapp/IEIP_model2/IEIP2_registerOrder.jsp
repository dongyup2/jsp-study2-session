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
    bottom: 0px;
}
</style>
<script>
function validateForm() {
    const orderNumber = document.getElementById('orderno');
    const store = document.getElementById('shopno');
    const orderDate = document.getElementById('orderdate');
    const productCode = document.getElementById('pcode');
    const orderQuantity = document.getElementById('amount');

    if (orderNumber.value == "") {
        alert("주문번호가 입력되지 않았습니다!");
        orderNumber.focus();
        return false;
    }
    if (store.value == "") {
        alert("주문점포가 선택되지 않았습니다!");
        store.focus();
        return false;
    }
    if (orderDate.value == "") {
        alert("주문일자가 입력되지 않았습니다!");
        orderDate.focus();
        return false;
    }
    if (productCode.value == "") {
        alert("제품코드가 선택되지 않았습니다!");
        productCode.focus();
        return false;
    }
    if (orderQuantity.value == "") {
        alert("주문수량이 입력되지 않았습니다!");
        orderQuantity.focus();
        return false;
    }
    return true;
}


</script>
</head>
<body>
    <header>
        <h1><a href="IEIP2_index.jsp">할인점 주문프로그램 ver 1.0</h1>
        <hr>
    </header>
    <nav>
        <ul>
            <li><a href="IEIP2_registerOrder.jsp">주문등록</a></li>
            <li><a href="IEIP2_Orderlist.jsp">주문목록조회</a></li>
            <li><a href="IEIP2_OrderStatusByStore.jsp">점포별주문현황</a></li>
            <li><a href="IEIP2_ProductCodeSelect.jsp">제품코드조회</a></li>
            <li><a href="IEIP2_index.jsp">홈으로</a></li>
        </ul>
    </nav>
    <section>
        <h3>주문등록</h3>
        <form onsubmit="return validateForm();" method="post" action="OrderRegServlet" name="orderForm">
	        <table border="1px">
	        	<tr>
			        <td>주문번호</td>
			        <td><input type="text" id="orderno" name="orderno"></td>
	        	</tr>
	        	<tr>
			        <td>주문점포</td>
			        <td>
			            <select id="shopno" name="shopno">
			                <option>주문점포를 선택해주세요</option>
			                <option value="S001">S001</option>
			                <option value="S002">S002</option>
			            </select>
			        </td>
	        	</tr>
	        	<tr>
			        <td>주문일자</td>
			        <td><input type="text" id="orderdate" name="orderdate"></td>
	        	</tr>
	        	<tr>
			        <td>제품코드</td>
			        <td>
			            <select id="pcode" name="pcode">
			                <option value="">제품코드를 선택해주세요</option>
			                <option value="AA01">AA01</option>
			                <option value="AA02">AA02</option>
			                <option value="AA03">AA03</option>
			            </select>
			        </td>
	        	</tr>
	        	<tr>
			        <td>주문수량</td>
			        <td><input type="text" id="amount" name="amount"></td>
	        	</tr>
	        	<tr>
			        <td colspan="2" style="text-align: center;"><button type="submit">주문등록</button><button type="reset">다시쓰기</button></td>
	        	</tr>
	        </table>
        </form>
    </section>
    <footer>HRDKOREA Copyright&#169;2016 All right reserved. Human Resources Delvelopment Serive of Korea</footer>
</body>

<script>
<% String result = (String) request.getAttribute("result"); %>
<% if (result != null) { %>
    <% if (result.equals("success")) { %>
    alert("주문등록이 정상적으로 등록되었습니다!");
    window.location.href = "IEIP_index.jsp";
    <% } else { %>
    alert("주문등록에 실패하였습니다. 다시 시도해주세요.");
    <% } %>
<% } %>
</script>

</html>