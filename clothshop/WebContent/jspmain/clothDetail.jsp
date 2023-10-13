<%@page import="java.util.ArrayList"%>
<%@page import="dto.ClothRepository"%>
<%@page import="dto.Cloth"%>
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
		String id = request.getParameter("id");
		ClothRepository dao = new ClothRepository();
		Cloth detail = dao.clothDetailId(id);
		
	%>	
		<img src="../resources/images/<%=detail.getClothId()%>.jpg">
		<h3><%=detail.getClothId() %></h3>
		<h3><%=detail.getClothColor() %></h3>
		<h3><%=detail.getClothCost() %></h3>
		<h3><%=detail.getClothName() %></h3>
		<h3><%=detail.getClothSize() %></h3>
	<% 		
		
	%>
		
</body>
</html>