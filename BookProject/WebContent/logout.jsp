<%@page import="common.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
session.setAttribute("userid", null); 
JSFunction.alertLocation("로그아웃 완료", "login.jsp", out);
%>