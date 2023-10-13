<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 회원가입하기 </h1>
	
	<form action="addmemberprocess.jsp" method="post">
		<input type = "text" name="id"> 아이디 <br>
		<input type = "password" name="pw"> 비밀번호 <br>
		<input type = "password" name="pwc"> 비밀번호확인 <br>
		<input type = "text" name="name"> 이름 <br>
		<input type = "text" name="address"> 주소 <br>
		<input type = "text" name="tel"> 연락처 <br>
		<input type ="submit" value="회원가입하기">
	</form>
</body>
</html>