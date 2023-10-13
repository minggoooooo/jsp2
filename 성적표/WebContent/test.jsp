<%@page import="dto.testDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.testDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	testDAO dao = new testDAO();
	String name = request.getParameter("name");
	ArrayList<testDTO> list = dao.searchScore(name);
	dao.close();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<Tr>
			<td colspan="5">
			<form>
				 학점 : <input type="text" name="name">
				 <input type="submit" value="찾기">
			 </form>
		</Tr>
		<tr>
			<td> 이름 </td>
			<td> 학번 </td>
			<td> 국어 </td>
			<td> 영어 </td>
			<td> 수학 </td>
			<td> 학점 </td>
		</tr>
		<%
			for(testDTO dto : list){
				double avg = (dto.getEng()+dto.getKor()+dto.getMath()) / 3 ;
		%>
		<c:set var="info" value="<%=dto %>"> </c:set>
		<c:set var="avg" value="<%=avg %>"> </c:set>
		<tr>
			<td> ${info.name} </td>
			<td> ${info.sNum} </td>
			<td> ${info.kor} </td>
			<td> ${info.eng} </td>
			<td> <%= dto.getMath() %> </td>
			<td> ${info.score }</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>