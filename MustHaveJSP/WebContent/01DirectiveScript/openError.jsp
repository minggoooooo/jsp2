<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="resultError.jsp" %>
 <%! int [] arr = new int[3]; %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	for(int i=0; i<4; i++){
		arr[i]=i;
	}
	out.println(arr[3]);


%>	
</body>
</html>