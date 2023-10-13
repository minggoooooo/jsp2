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
		request.setCharacterEncoding("utf-8");
		String inters[];
		String inter = "";
		inters= request.getParameterValues("inter");
		if(inters != null){
		for(int i =0; i<inters.length; i++){
			inter += inters[i] +" ";
			}
		}
	%>
	
	<table border="1">
		<tr>
			<td>이름</td>
			<td> ${param.name}</td>
		</tr>
		<tr>
			<td>성별</td>
			<td> ${param.gender}</td>
		</tr>
		<tr>
			<td>학력</td>
			<td> ${param.grade}</td>
		</tr>
		<tr>
			<td>관심 사항</td>
			<td> 
			${paramValues.inter[0]}
			${paramValues.inter[1]}
			${paramValues.inter[2]}
			${paramValues.inter[3]}
			</td>
		</tr>
	</table>
</body>
</html>