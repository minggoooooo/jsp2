<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 로그인 페이지 </h2>
	<span style="color:red; font-size:1.2em;">
		<%=request.getAttribute("LoginErrMsg") == null ? "" : request.getAttribute("LoginErrMsg")%>
	</span>
	<%
		if(session.getAttribute("UserId") == null){
	%>
		<form action="LoginProcess.jsp" method="post" name="loginFrm" onsubmit="return validateForm(this)";>
			아이디: <input type="text" name="user_id" required> <br>
			비밀번호: <input type="password" name="user_pw" required> <br>
			<input type="submit" value="로그인하기">
		</form>
	<% } else {%>
		${sessionScope.UserName } 회원님, 로그인하셨습니다. <br> 
		<a href="Logout.jsp">로그아웃</a>
		<a href="../08Board/Write.jsp">글쓰기</a>
		<a href="../08Board/List.jsp">목록보기</a>
		
	<%}
	%>
</body>
</html>