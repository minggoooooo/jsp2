<%@ page import="utils.cookieManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginId = cookieManager.readCookie(request,"loginId");

	String cookieCheck = "";
	if(!loginId.equals("")){
		cookieCheck= "checked";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 로그인 페이지 </h2>
	<form action="IdSaveProcess.jsp" method="post">
		아이디: <input type="text" name="user_id" value="<%=loginId%>">
		<input type="checkbox" name="save_check" value="Y"<%=cookieCheck%>> <br>
		비밀번호: <input type="password" name="user_pw"> <br>
		<input type="submit" value="로그인하기">
	</form>
</body>
</html>