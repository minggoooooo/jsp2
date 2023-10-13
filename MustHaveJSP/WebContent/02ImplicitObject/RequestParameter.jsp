<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	ul{
		list-style: none;
	}
	li{
		font-size: 20px;
	}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");	//한글처리
		String id = request.getParameter("id");
		String gender = request.getParameter("gender");
		String[] favo = request.getParameterValues("favo");
		
		String favoStr="";
		if(favo != null){
			for(int i=0; i<favo.length; i++){
				favoStr += favo[i] + " ";
			}
		}
		
		String intro = request.getParameter("intro").replace("\r\n","<br>");
	%>
	<ul>
		<li> 아이디: <%=id %></li>
		<li> 성별: <%=gender %></li>
		<li> 관심사항: <%=favoStr %></li>
		<li> 자기소개: <%=intro %></li>
	</ul>
</body>
</html>