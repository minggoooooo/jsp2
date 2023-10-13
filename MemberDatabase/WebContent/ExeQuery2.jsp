<%@page import="common.mysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 회원 목록 조회 테스트</h2>
	<%
		mysqlConnect jdbc = new mysqlConnect();
		String sql = "select * from member";
		jdbc.stmt = jdbc.con.createStatement();
		jdbc.rs = jdbc.stmt.executeQuery(sql);
		// select 만 이거 씀 executeQuery(sql) 은 int로 나오는게 아니라 rs로 받아들여야 됨.
		while(jdbc.rs.next()){
			String id = jdbc.rs.getString(1);
			String name = jdbc.rs.getString(2);
			String password = jdbc.rs.getString(3);
			String phoneNum = jdbc.rs.getString(4);
			String email = jdbc.rs.getString(5);
			String text = jdbc.rs.getString(6);
			String commend = jdbc.rs.getString(7);
			
			out.print(id + " " + name + " " + password + " " + 
					phoneNum + " " +  email + " " +text +" " + commend + "<br>");
		}
		jdbc.close();
	%>
</body>
</html>