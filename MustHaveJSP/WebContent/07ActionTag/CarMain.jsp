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
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("carName"); 
	int price = Integer.parseInt(request.getParameter("carPrice")); 
	String color = request.getParameter("carColor"); 

%>
	<jsp:useBean id="Car" class="common.Car" scope="request"/>
	<jsp:setProperty property="carName" name="Car" value="<%=name%>"/>
	<jsp:setProperty property="carPrice" name="Car" value="<%=price %>"/>
	<jsp:setProperty property="carColor" name="Car" value="<%=color%>"/>
	 
	<h1> 자동차 이름 : <jsp:getProperty property="carName" name="Car"/></h1>
	<h1> 자동차 가격 : <jsp:getProperty property="carPrice" name="Car"/></h1>
	<h1> 자동차 색상 : <jsp:getProperty property="carColor" name="Car"/></h1>
</body>
</html>