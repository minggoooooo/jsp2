<%@page import="common.Car"%>
<%@page import="common.Person"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	<c:set var="directVar" value="100"/>
	<c:set var="elVar" value="${ directVar mod 5 }"/>
	<%
		Date today = new Date();
		SimpleDateFormat sf= new SimpleDateFormat("YYYY-MM-dd");
	%>
	<c:set var="expVar" value="<%= today %>"/>
	<c:set var="today" value="<%= sf.format(today) %>"/>
	<c:set var="today2" value='<%= new SimpleDateFormat("YYYY-MM-dd-HH-mm-ss").format(new Date()) %>'/>
	
	
	<h3>JSTL 변수 출력</h3>
	<ul>
		<li> directVar : ${directVar}</li>
		<li> elVar : ${elVar}</li>
		<li> expVar : ${expVar}</li>
		<li> today : ${today }</li>
		<li> today : ${today2 }</li>
	</ul>
	
	<h3> 자바빈즈 생성 - 생성자 사용</h3>
	<c:set var="personVar1" value='<%= new Person("박문수", 50) %>' scope="request"/>
	<ul>
		<li>이름: ${requestScope.personVar1.name}</li>
		<li>나이: ${requestScope.personVar1.age}</li>
	</ul>
	
	<h3> 자바빈즈 생성2 - 타겟, 프로퍼티 사용</h3>
	<c:set var="carVal1" value='<%= new Car() %>' scope="request"/>
	<c:set target="${carVal1}" property="carName" value="티코"/>
	<c:set target="${carVal1}" property="carPrice" value="500000"/>
	<c:set target="${carVal1}" property="carColor" value="빨강"/>
	<ul>
		<li>자동차 이름: ${carVal1.carName}</li>
		<li>자동차 가격: ${carVal1.carPrice}</li>
		<li>자동차 색상: ${carVal1.carColor}</li>
	</ul>
	
	
</body>
</html>