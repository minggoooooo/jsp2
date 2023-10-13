<%@page import="java.sql.PreparedStatement"%>
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
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String password_check = request.getParameter("password_check");
		String phoneNum = request.getParameter("phoneNum");
		String email="";
		if(request.getParameter("email2").equals("direct")){
		email = request.getParameter("email1");
		} else{
		email = request.getParameter("email1") + "@" + request.getParameter("email2");
		}
		String text = request.getParameter("text");
		String commends[] = request.getParameterValues("commend");
		String commend="";
		for(String cm:commends){
			commend += cm + " ";
		}
		mysqlConnect ms = new mysqlConnect();
		if(!password.equals(password_check)){
			ms.alertBack("비밀번호가 달라요", out);
		}
		String sql = "insert into member(id,name,password,phoneNum,email,text,commend) values (?,?,?,?,?,?,?)";
		PreparedStatement psmt = ms.con.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, name);
		psmt.setString(3, password);
		psmt.setString(4, phoneNum);
		psmt.setString(5, email);
		psmt.setString(6, text);
		psmt.setString(7, commend);
		try{
			
		int result = psmt.executeUpdate();
		if(result==1){
			out.print("정상처리");
		} else{
			out.print("비정상처리");
		}
		} catch (Exception e){
			ms.alertBack("이미 아이디가 있어요", out);
		}
		ms.close();
		
		
	%>
</body>
</html>