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
		String loginErr = request.getParameter("loginErr");
		if(loginErr != null) out.println ("비밀번호가 틀렸습니다");
		%>
		<form action="examProcess.jsp" method="post">
			<input type="text" name="name">이름 <br>
			<input type="password" name="pw">비밀번호 <br>
			<input type="submit" value="전송">
		</form>
</body>
</html>