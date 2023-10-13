<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="common.JDBConnect2"%>
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
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try{
			String url= "jdbc:mysql://localhost:3306/member";
			String id="manager";
			String pw="1234";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,id,pw);
		
		
			String sql = "select * from student";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
		// select 만 이거 씀 executeQuery(sql) 은 int로 나오는게 아니라 rs로 받아들여야 됨.
			while(rs.next()){
				String id2 = rs.getString(1);
				String name = rs.getString(2);
				String password = rs.getString(3);
				String phoneNum = rs.getString(4);
				String email = rs.getString(5);
				String text = rs.getString(6);
				String commend = rs.getString(7);
			//int는 getInt
			//date는 getDate
			out.print(id + " " + name + " " + password + " " + 
					phoneNum + " " +  email + " " +text +" " + commend + "<br>");
		}
		} catch(Exception e){
			out.print("데이터베이스 연결이 실패했습니다");
		} finally{
			if( rs != null) rs.close();
			if( stmt != null) stmt.close();
			if( con != null) con.close();
		}
		
	%>
</body>
</html>