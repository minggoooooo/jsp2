<%@page import="dao.bookinfoDAO"%>
<%@page import="dto.bookinfoDTO"%>
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
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		bookinfoDAO dao = new bookinfoDAO();
		
		bookinfoDTO dto = dao.detail(id);
		dao.close();
		
		
	%>
		<table border="1">
			<tr>
				<td> 책 제목</td>
				<td> 책 가격</td>
			</tr>
			<tr>
				<td> <%=dto.getBooktitle() %></td>
				<td> <%=dto.getBookprice() %></td>
			</tr>
		</table>
		
		<button type="button"> 주문하기 </button>
		<button type="button"> 지우기 </button>
	
</body>
</html>