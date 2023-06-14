<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.lang.Character" %>
<%
   String username = request.getParameter("username");
   String snumber = request.getParameter("snumber");
   char genderChar = snumber.charAt(snumber.length() - 1);
   String gender = (Character.getNumericValue(genderChar) % 2 == 1) ? "남성" : "여성";
   request.setAttribute("username", username);
   request.getRequestDispatcher(gender + "페이지.jsp").forward(request, response);
%>
