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
            <li><a href="IEIP_OrderStatusByStore.jsp">점포별주문현황</a></li>
            <li><a href="IEIP_ProductCodeSelect.jsp">제품코드조회</a></li>
            <li><a href="IEIP_index.jsp">홈으로</a></li>
        </ul>
    </nav>
    <section>
        <p>과정평가형 자격 CBQ
        <p>
        <p>국가직무능력표준(NCS : National Competency Standards)으로 설계된 교육훈련과정을 체계적으로 이수하고 내외부 평가를 거쳐 취득하는 국가기술자격 입니다.
        <p>
        <p>산업현장 중심의 교육평가로 더 커지는 능력:
        <p>알고 있는 것에 할 수 있는 것을 더하는
        <p>과정평가형 자격은
        <p>현장 중심형 인재육성을 지원합니다.
    </section>
    <footer>HRDKOREA Copyright&#169;2016 All right reserved. Human Resources Delvelopment Serive of Korea</footer>
</body>
</html>
