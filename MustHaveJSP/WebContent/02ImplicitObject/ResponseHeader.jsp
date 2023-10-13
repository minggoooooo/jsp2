<%@page import="java.util.Collection"%>
<%@page import="java.text.SimpleDateFormat"%>
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
		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		long add_date = s.parse(request.getParameter("add_date")).getTime();
		int add_int = Integer.parseInt(request.getParameter("add_int"));
		//8282 (String ->                                              int)
		String add_str = request.getParameter("add_str");
		//홍길동
		
		response.addDateHeader("myBirthday", add_date);
		response.addIntHeader("myNumber", add_int);	// 8282
		response.addIntHeader("myNumber", 1004);	// 1004
		// 두개는 순서차이로 헤더 이름이 결정됨.
		response.addHeader("myString", add_str);	//홍길동
		response.setHeader("myString", "안중근");		//안중근
		// 앞에거는 예를들어 String a = 5 라고 있다하면 a가 앞에거 5가 뒤에거
	%>
	
	<h2> 응답 헤더 정보 출력하기 </h2>
	<%	
		int sum=0;
		Collection<String> headerNames = response.getHeaderNames();
		for(String hName : headerNames){
			String hValue = response.getHeader(hName);
	%>
		<li> <%=hName%> : <%=hValue%></li>
	<%
			sum++;
	%>
		<p> <%=sum%> </p>
	<% 
		}
			out.println(sum);
	%>
	
	<h2> myNumber만 출력하기</h2>
	<%
		Collection<String> myNumber = response.getHeaders("myNumber");
		for(String myNum : myNumber){
	%>		
		<li> myNumber : <%= myNum %> </li>
	
	<% 	
		}
	%>
</body>
</html>