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
		String id= request.getParameter("id");
		String pw= request.getParameter("pw");
	%>
	아이디 <strong> <%=request.getAttribute("id") %></strong> <br/>
	비밀번호 <strong> <%=request.getAttribute("pw") %></strong> <br/>
	<a href="./login.do?id=<%=id%>&pw=<%=pw%>">클릭!</a>
</body>
</html>