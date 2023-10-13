<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 아이디와 비밀번호를 입력해주세요</h2>
		<form action="loginprocess.jsp" method="post">
		아이디  <input type="text" name="id"> <br>
		비밀번호  <input type="text" name="pw"> <br>
		<input type ="submit" value="로그인하기">
		</form>
</body>
</html>