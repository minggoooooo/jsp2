<%@page import="common.JDBConnect2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>0
</head>
<body>
	<h2> JDBC 테스트</h2>
	<%
		JDBConnect2 jdbc2 = new JDBConnect2();
		jdbc2.close();
	%>
	<h2> JDBC 테스트2</h2>
	<%
		String driver = application.getInitParameter("MysqlDriver");
		String url = application.getInitParameter("MysqlURL");
		String id = application.getInitParameter("MysqlId");
		String pwd = application.getInitParameter("MysqlPwd");
		JDBConnect2 jdbc3 = new JDBConnect2(driver,url,id,pwd,out);
		jdbc3.close2(out);
	%>
</body>
</html>