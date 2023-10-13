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
	<jsp:setProperty property="carName" name="Car" value="아반떼"/>
	<jsp:setProperty property="carPrice" name="Car" value="5000000"/>
	<jsp:setProperty property="carColor" name="Car" value="은색"/>
	<jsp:forward page="carForward.jsp?carMf=현대">
		<jsp:param value="300" name="maxSpeed"/>
	</jsp:forward>
</body>
</html>