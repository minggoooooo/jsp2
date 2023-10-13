<%@page import="dto.Car"%>
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
		request.setCharacterEncoding("utf-8");
		int pirce = Integer.parseInt(request.getParameter("pirce"));
		String manufacturer = request.getParameter("manufacturer");
		String carName = request.getParameter("carName");
		String carID = request.getParameter("carID");
		int hp = Integer.parseInt(request.getParameter("hp"));
		double fuelEfficiency = Double.parseDouble(request.getParameter("fuelEfficiency"));
		
		CarRepository cr = new CarRepository().getInstance();
		Car car = new Car();
		car.setCarID(carID);
		car.setCarName(carName);
		car.setFuelEfficiency(fuelEfficiency);
		car.setHp(hp);
		car.setManufacturer(manufacturer);
		car.setPirce(pirce);
		cr.AddCar(car);
		
		response.sendRedirect("products.jsp");
	%>
</body>
</html>