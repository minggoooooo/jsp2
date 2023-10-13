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


	
		for(int i=0; i<cloths.size(); i++){
			Cloth cloth = cloths.get(i);
	%>
		<img src="../resources/images/<%=cloth.getClothId()%>.jpg">
		<h3><%=cloth.getClothId() %></h3>
		<h3><%=cloth.getClothName() %></h3>
		<p>
		<a href="clothDetail.jsp?id=<%=cloth.getClothId()%>"
		role="button"> 상세정보 </a>
		</p>
	<% 			
			
		}

	%>
</body>
</html>