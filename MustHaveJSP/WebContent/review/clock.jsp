<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Date"%>
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
		response.setIntHeader("Refresh", 5);
		LocalDateTime today = LocalDateTime.now();
		//  밑에는 데이트를 쓸 떄 Date today2 = new Date();
		//String today2 = today2.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 HH:mm:ss"))
		int year = today.getYear();
		int month = today.getMonthValue();
		int day = today.getDayOfMonth();
		int hour = today.getHour();
		String AMPM;
		if(hour>12){
			AMPM="PM";
			hour-=12;
		} else if(hour==12){
			AMPM="PM";
		} else{
			AMPM="AM";
		}
		int minute = today.getMinute();
		int second = today.getSecond();
		
		String dateTimeFormat1 = today.format(
					DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 HH:mm:ss")
				);
		out.print(dateTimeFormat1);
		//REFRESH 대소문자 구분함 Refresh로 써야합니다
		// 5초에 한번 새로고침
		
		// Date today = new Date();
		
		// Calender
		// LocalDate, LocalTime, LocalDateTime
	%>
	
	<h2> 현재 시간은 <%= year %>년 <%= month %>월 <%= day %>일 <br>
		 <%=AMPM %> <%=hour %>시 <%=minute %>분 <%=second %>초입니다.
	 </h2>
	 
</body>
</html>