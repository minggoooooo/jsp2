<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<%! int a= 3; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 오류 발생</h2>
	<p>
	오류명 : <%= exception.getClass().getName() %><br />
	오류 메시지 : <%= exception.getMessage() %>
	</p>
	
	
	<% // <% = 는 안에 있는 값 내보내기 즉 int a = 3 
	//  <h2> a의 값은 : <%= a >% </h2>
	%>
</body>
</html>