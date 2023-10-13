<%@page import="el.MyELClass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MyELClass myClass = new MyELClass();
pageContext.setAttribute("myClass", myClass);
String email = request.getParameter("mail1") + "@" + request.getParameter("mail2");
pageContext.setAttribute("email", email);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 성별 확인</h1>
	<h3> 철수 : ${myClass.getGender("001225-3123456") }</h3>
	<form>
		이름 : <input type="text" name="name" required> <br>
		주민번호 : <input type="text" name="jumin" required> <br>
		이메일 :
		<input type="text" name= "mail1"> @
		<select name="mail2"> 
			<option value="google.com"> google.com
			<option value="naver.com"> naver.com
			<option value="daum.net"> daum.net
		</select>
		<input type="submit" value="전송"> 
	</form>
	<% if(request.getParameter("jumin")!=null){ %>
	<h1> ${param.name} 님의 성별은 ${myClass.getGender(param.jumin) } 아이디는 ${myClass.getId(email)} 메일은 ${myClass.getMail(email) }입니다.</h1>
	<% } %>
</body>
</html>