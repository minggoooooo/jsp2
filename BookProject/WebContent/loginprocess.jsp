<%@page import="dto.MembershipDTO"%>
<%@page import="common.JSFunction"%>
<%@page import="dao.MembershipDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MembershipDAO dao = new MembershipDAO();
		MembershipDTO dto = dao.logincheck(id);
		dao.close();
		
		
		if(id.equals(dto.getMemberid())){
			if(pw.equals(dto.getMemberpw())){
			session.setAttribute("userid", id);
	%>
			<h1> <%=dto.getMembername() %> 님 환영합니다</h1>
	<% 
			} else{
			JSFunction.alertLocation("비밀번호가 맞지 않습니다", "login.jsp", out);
			}
		} else{
			JSFunction.alertLocation("아이디가 없습니다", "login.jsp", out);
		}
	%>
</body>
</html>