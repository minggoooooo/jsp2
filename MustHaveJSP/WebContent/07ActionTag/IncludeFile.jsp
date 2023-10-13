<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String outterpath1 = "inc/OuterPage1.jsp";
	String outterpath2 = "inc/OuterPage2.jsp";
	String outterpath3 = "inc/OuterPage3.jsp";
	
	pageContext.setAttribute("pAttr", "동명왕");
	request.setAttribute("rAttr", "온조왕");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 지시어로 페이지 포함하기</h2>
	<%@ include file= "inc/OuterPage1.jsp" %>
	<p> 외부 파일에 선언한 변수 : <%=newVar1 %>
	
	<h2> 액션태그로 페이지 포함하기</h2>
	<jsp:include page="inc/OuterPage2.jsp"/>
	
</body>
</html>