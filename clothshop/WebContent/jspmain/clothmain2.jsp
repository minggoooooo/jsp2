<%@page import="dto.ClothRepository"%>
<%@page import="dto.Cloth"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table,tr,td{
	border: 5px solid black;
	border-collapse: collapse;
	text-align: center;
}
table{
	margin: 0 auto;
}
td{
	padding: 20px;
}
</style>
</head>
<body>
	<% 	
		ClothRepository cr = new ClothRepository();
		ArrayList <Cloth> cloths = new ArrayList<>();
		cloths.addAll(cr.getAllCloth());
	%>
		<table>
	<%	
		for(int i=0; i<cloths.size(); i++){
			Cloth cloth = cloths.get(i);
	%>
		<tr>
		<td colspan="5"><img src="../resources/images/<%=cloth.getClothId()%>.jpg"></td>
		</tr>
		<tr>
		<td>상품아이디</td>
		<td>상품명</td>
		<td>상품 색상</td>
		<td>상품가격</td>
		<td>상품사이즈</td>
		</tr>
		<tr>
		<td><%=cloth.getClothId()%></td>
		<td><%=cloth.getClothName() %></td>
		<td><%=cloth.getClothColor() %></td>
		<td><%=cloth.getClothCost() %></td>
		<td><%=cloth.getClothSize() %></td>
		</tr>
	<% 			
			
		}
	%>
		</table>
	<% 	
	%>
</body>
</html>