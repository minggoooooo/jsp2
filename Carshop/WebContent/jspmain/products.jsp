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
<style>
	tr, td{
		border: 2px solid black;
		border-collapse: collapse;
	}
</style>
</head>
<body>
	<%@ include file="head.jsp" %>
	<table>
	<%	
		ArrayList <Car> carlist = new ArrayList<>();
		CarRepository cr = new CarRepository().getInstance();
		carlist.addAll(cr.callCarList());
			// 향상된 for문 불러올 (배열 or 리스트)개체의 타입 + 변수명 + 배열 or 리스트 이름
		for(Car car: carlist){
			String id = car.getCarID();
			String carName = car.getCarName();
	%>		
			<tr>
			<td><a href="detail.jsp?id=<%=id%>">
			<img src="../resources/images/<%=id %>.jpg">
			</a></td>
			<td><h3><%=carName %></h3></td>
			</tr>
	<% 		
			
		}
	
	%>
	</table>
</body>
</html>