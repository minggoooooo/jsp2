<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td> 파라미터 이름 </td>
			<td> 파라미터 값 </td>
		</tr>
		<%	
			request.setCharacterEncoding("utf-8");
		
			Enumeration pNames = request.getParameterNames();
			while(pNames.hasMoreElements()){
				String pName = (String) pNames.nextElement();
				out.print("<tr><td>"+ pName +"</td>");
				String value = "";
				String values [] = request.getParameterValues(pName) ;
					for(String v : values){
						value += v + " ";
					}
				out.print("<td>"+ value +"</td></tr>");
			}
		%>
	</table>
</body>
</html>