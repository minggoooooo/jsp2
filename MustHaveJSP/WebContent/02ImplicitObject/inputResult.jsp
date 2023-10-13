<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! public int add(int a,int b){
		int sum= 0;
		for(int i=a; i<=b; i++){
			sum+=i;
	}
	return sum;
	}
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int a = Integer.parseInt(request.getParameter("num1"));
	int b = Integer.parseInt(request.getParameter("num2"));
	%>
	
	<h2> 입력하신 숫자는 <%= a%>, <%= b%> 이며 <%= a%>부터 <%= b %>까지의 합계는 <%= add(a,b) %></h2>
</body>
</html>