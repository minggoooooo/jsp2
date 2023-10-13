<%@page import="common.JSFunction"%>
<%@page import="dao.MembershipDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String id = session.getAttribute("userid").toString();
	String pw = request.getParameter("pw");
	
	MembershipDAO dao = new MembershipDAO();
	int result = dao.deletemember(id, pw);
	dao.close();
	
	if(result ==1){
		JSFunction.alertLocation("탈퇴성공", "login.jsp", out);
	} else{
		JSFunction.alertBack("비밀번호가 다릅니다", out);
	}
%>
	
