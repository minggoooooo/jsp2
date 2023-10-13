<%@page import="java.util.ArrayList"%>
<%@ page import ="dto.Car" %>
<%@page import="dto.CarRepository"%>
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
		CarRepository cr = new CarRepository().getInstance();
		Car car = new Car();
		String id = request.getParameter("id");
		car =  cr.CarGetById(id);
	%>
		<img src="../resources/images/<%=car.getCarID() %>.jpg">
		<h3>이름 : <%=car.getCarName() %></h3>
		<h3>연비 : <%=car.getFuelEfficiency() %></h3>
		<h3>가격 : <%=car.getPirce() %></h3>
		<h3>제조회사 : <%=car.getManufacturer() %></h3>
		<h3>마력 : <%=car.getHp() %></h3>
	
</body>
</html>