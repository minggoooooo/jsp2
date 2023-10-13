<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = (String) session.getAttribute("userid");
%>
	
	<%
		if(userid==null){
			out.print("<a class='navbar-brand' href='login.jsp'>");
			out.print("로그인");
			out.print("</a>");
			out.print("<a class='navbar-brand' href='addmember.jsp'>");
			out.print("회원가입");
			out.print("</a>");
		}
		else{
			out.print("<a class='navbar-brand' href='bookmain.jsp'>");
			out.print("도서목록");
			out.print("</a>");
			out.print("<a class='navbar-brand' href='addproduct.jsp'>");
			out.print("도서추가");
			out.print("</a>");
			out.print("<a class='navbar-brand' href='logout.jsp'>");
			out.print("로그아웃");
			out.print("</a>");
			out.print("<a class='navbar-brand' href='deletemember.jsp'>");
			out.print("회원탈퇴");
			out.print("</a>");
		}
	%>
