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
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		String id2 = application.getInitParameter("id");
		String pw2 = application.getInitParameter("pw");
		
		if(id.equalsIgnoreCase(id2) && pw.equalsIgnoreCase(pw2)){
			response.sendRedirect("ResponseWelcome.jsp");
			// 그냥 아무것도 안쓰고 (폼같은거 안쓰고) 보내는 방식
		} else{
			request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request, response);
			// 파라미터를 가지고 보내는 것 여러 파라미터도 보낼 수 있음
		}
		
		//if(id.equalsIgnoreCase("Java") && pw.equalsIgnoreCase("1234")){	//IGNORECASE 는 대소문자 구분없이
		//	response.sendRedirect("ResponseWelcome.jsp");
		//} else {
		//	request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request, response);
		//}
	%>

</body>
</html>