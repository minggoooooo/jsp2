<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Date today = new Date();
	SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
	String todayStr = dateformat.format(today);
	out.println("오늘날짜 : " + todayStr);
%>

</body>
</html>