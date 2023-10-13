<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<%
		int pInteger2= (Integer)(pageContext.getAttribute("pageInteger"));
		// object 타입이라 형변환
		String pString2 = pageContext.getAttribute("pageString").toString();
		Person nPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>Integer객체: <%=pInteger2 %></li>
		<li>String객체: <%=pString2 %></li>
		<li>Person2객체: <%=nPerson2.getName() %></li>
	</ul>
</body>
</html>