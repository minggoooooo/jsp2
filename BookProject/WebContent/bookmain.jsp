<%@page import="dao.bookinfoDAO"%>
<%@page import="dto.bookinfoDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="top.jsp" %>
	<%@ include file="LoginCheck.jsp" %>
	
	<% 
		List<bookinfoDTO> list = new ArrayList<>(); 
		bookinfoDAO dao = new bookinfoDAO();
		list= dao.getList();
		dao.close();
	%>
		<table border="1">
		<tr>
			<th>책아이디</th>
			<th>작가</th>
			<th>책이름</th>
			<th>책내용</th>
			<th>책가격</th>
			<th>발행일자</th>
			<th>등록자</th>
		</tr>
	<% 
		for(bookinfoDTO d : list){
	%>
		<tr>
			<td><%=d.getBookid() %></td>
			<td><%=d.getAuthor() %></td>
			<td><a href="detail.jsp?id=<%=d.getBookid()%>"><%=d.getBooktitle() %></a></td>
			<td><%=d.getBookcontent() %></td>
			<td><%=d.getBookprice() %></td>
			<td><%=d.getBookdate() %></td>
			<td><%=d.getMemberid() %></td>
		</tr>
	<% 		
		}
	%>
		</table>
	<% 
	
	%>
	
</body>
</html>