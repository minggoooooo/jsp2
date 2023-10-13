<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
	<h2> 1. 쿠키 설정</h2>
	<% 
		Cookie cookie = new Cookie("myCookie","초콜릿쿠키사랑해");
		cookie.setPath(request.getContextPath());
		cookie.setMaxAge(3600); //1시간
		response.addCookie(cookie);	//응답 헤더에 쿠키 추가 반드시해야됨.
		// String a = request.getContextPath(); /MustHaveJSP가 나옴
		
		// cookie.setPath("http://www.naver.com"); 네이버 로그인 시 사용할것
	%> 
	
	<h2> 2. 쿠키 설정 후 값 확인하기</h2>
	<%
		Cookie[] cookies = request.getCookies();
		if( cookies != null){
			for(Cookie c : cookies){
				String cookieName = c.getName();
				String cookieValue = c.getValue();
				out.print(cookieName + " : " + cookieValue);
			}
		}
	%>
	
	<h2> 3. 페이지 이동 후 쿠키값 확인하기</h2>
	<a href="CookieResult.jsp">
		다음 페이지에서 쿠키값 확인하기
	</a>
</body>
</html>