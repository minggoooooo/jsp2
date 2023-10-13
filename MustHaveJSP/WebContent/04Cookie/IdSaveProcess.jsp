<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="utils.cookieManager" %>
<%@ page import="utils.JSFunction" %>
<% 
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
	String save_check= request.getParameter("save_check");
	
	if(user_id.equals("java") && user_pw.equals("1234")){
		if(save_check != null && save_check.equals("Y")){
			cookieManager.makeCookie(response, "loginId", user_id, 86400);
		} else{
			cookieManager.deleteCookie(response, "loginId");
		}
		JSFunction.alertLocation("로그인에 성공했습니다", "idSaveMain.jsp", out);
	} else{
		JSFunction.alertBack("로그인에 실패했습니다", out);
	}
%>
