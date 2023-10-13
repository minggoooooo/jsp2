<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="Car" class="common.Car" scope="request"/>
	<ul>
		<li> 자동차 이름: <jsp:getProperty property="carName" name="Car"/> </li>
		<li> 자동차 가격: <jsp:getProperty property="carPrice" name="Car"/></li>
		<li> 자동차 색상: <jsp:getProperty property="carColor" name="Car"/></li>
		<li> 자동차 제조회사: <%=request.getParameter("carMf") %></li>
		<li> 자동차 최고속도: <%=request.getParameter("maxSpeed") %></li>
	</ul>
</body>
</html>