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
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] hobbys = request.getParameterValues("hobby");
		String hobby = "";
	/* 	for(int i=0; i<hobbys.length;i++){
		if(i!=hobbys.length-1){
		hobby += hobbys[i] + " ";
		} else{
			hobby += hobbys[i];
		}
		} */
		for(String hobby1 : hobbys){
			hobby += hobby1 +" ";
		}
	%>
		<h1> 아이디 : <%=id %></h1>
		<h1> 비밀번호 : <%=pw %></h1>
		<h1> 이름 : <%=name %></h1>
		<h1> 성별 : <%=gender %></h1>
		<h1> 취미 : <%=hobby %></h1>
</body>
</html>