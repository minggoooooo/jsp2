<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page import="common.Car" %>
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
		Map<Integer,Car> map = (Map<Integer,Car>)application.getAttribute("map");
		Set<Integer> keys = map.keySet();
		Iterator<Integer> it = keys.iterator();
		while(it.hasNext()){
			Car car = map.get(it.next());
			String name = car.getCarName();
			int price = car.getCarPrice();
	%>
			<h1> 자동차 이름 : <%=name %> </h1>
			<h1> 자동차 가격 : <%=price %> </h1> <BR>
	<%		
			
		}
		for(Integer key : keys){
			String name = map.get(key).getCarName();
			int price = map.get(key).getCarPrice();
	%>
		<h1> 자동차 이름 : <%=name %> </h1>
		<h1> 자동차 가격 : <%=price %> </h1> <BR>
	<% 
		}
		
	%>
</body>
</html>