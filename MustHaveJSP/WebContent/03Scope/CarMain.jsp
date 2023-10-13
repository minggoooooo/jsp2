<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page import="common.Car" %>
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
		Map<Integer,Car> map = new HashMap<>();
		map.put(1, new Car("마세라티",215000000,"검정"));
		map.put(2, new Car("모닝",21500000,"흰색"));
		application.setAttribute("map", map);
	%>
		어플리케이션 영역에 속성이 저장되었슈
</body>
</html>