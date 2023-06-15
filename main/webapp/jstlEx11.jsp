<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1.<fmt:formatNumber value="1234567.89" groupingUsed="true" /><br>
2.<fmt:formatNumber value="1234567.89" groupingUsed="false" /><br>
3.<fmt:formatNumber value="123" pattern="0,000.0#" /><br>
4.<fmt:formatNumber value="${1/3 }" type="percent" /><br>
5.<fmt:formatNumber value="10000" type="currency" /><br>
5.<fmt:formatNumber value="10000" type="currency" currencySymbol="$" /><br>
</body>
</html>