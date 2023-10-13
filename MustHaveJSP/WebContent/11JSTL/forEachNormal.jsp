<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 일반 for 문 형태의 forEach 태그</h3>
	<c:forEach begin="1" end="3" step="1" var="i">
		<p> 반복 ${i } 입니다. </p>
	</c:forEach>
	<c:forEach begin="2" end="100" step="2" var="i">
		<c:set var="sum" value="${ sum + i}" />
	</c:forEach>
	<h3>${ sum } </h3>
</body>
</html>