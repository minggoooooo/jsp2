<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		LocalDateTime todaytime = LocalDateTime.now();
		String time= String.valueOf(todaytime.getHour());
		String minute = String.valueOf(todaytime.getMinute());
		String name = "최명우";
	%>
</body>
</html>