<%@page import="java.time.LocalTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../resources/js/jquery_1.12.4_jquery.min.js"></script>
<script>
	$(function(){
	<%-- 	function time2(){
			<%
			LocalTime today2 = LocalTime.now();
			String datetime = today2.format(DateTimeFormatter.ofPattern("a HH:mm:ss"));
			%>
			var txt = <%=datetime %>;
			$("#clock2").text(txt);
		} --%>
		function time(){
			var date = new Date();
			var today = date.toLocaleTimeString();
			$("#clock").text(today)
		} 
		//time2();
		time();
		setInterval(time, 1000);
		//setInterval(time2, 1000);
	})
</script>
</head>
<body>
	<h1 id ="clock"></h1>
	<h1 id ="clock2"></h1>
</body>
</html>