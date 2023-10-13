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
	
	<form action="loginprocess.jsp" method="post">
		<input type="text" name ="id"> 아이디 <br>
		<input type="password" name ="pw"> 비밀번호 <br>
		<input type="submit" value="로그인하기">
	</form>
</body>
</html>