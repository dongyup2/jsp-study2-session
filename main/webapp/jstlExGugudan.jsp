<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl 구구단</title>
<style>
 table {
       border-collapse: collapse;
    }
    td {
        border: 1px solid black;
        padding: 10px;
        text-align: center;
    }
</style>
</head>
<body>
<table>
    <c:forEach var="dan" begin="1" end="9">
    <tr>
    	<th>${dan}단</th>
    </tr>
        <tr>
            <c:forEach var="i" begin="1" end="9">
                <td>${dan} * ${i} = ${dan * i}</td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>
