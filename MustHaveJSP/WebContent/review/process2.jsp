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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if(id.equalsIgnoreCase("jsp") && pw.equals("1234")){
	%>
			<h1> 환영합니다 </h1>
	<% 		
		} else if (id.equalsIgnoreCase("jsp")){
	%>
			<h1> 비밀번호가 틀립니다</h1>
		<form action="request2.jsp">
		<input type="submit" value="돌아가기">
		</form>
	<% 		
		} else {
	%>
			<h1> 사용할 수 없는 아이디입니다.</h1>
		<form action="request2.jsp">
		<input type="submit" value="돌아가기">
		</form>
	<%		
		}
	%>	
</body>
</html>