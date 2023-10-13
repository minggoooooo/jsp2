<%@page import="common.JSFunction"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dao.MemberDAO"%>
<%@page import="java.sql.*"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String saveDirectory = application.getRealPath("Uploads");
	int maxPostSize = 5 * 1024 * 1000; //5mb
	String encoding = "utf-8";
	
		MultipartRequest mr = new MultipartRequest(request, saveDirectory , maxPostSize, encoding, new DefaultFileRenamePolicy());
		
		String id = mr.getParameter("id");
		String password = mr.getParameter("password");
		String name = mr.getParameter("name");		
		String phone = mr.getParameter("phone");		
		String address = mr.getParameter("address");	
		String photoImage = mr.getFilesystemName("photoImage");
		
		MemberDAO dao = new MemberDAO();
			
		
		int result = dao.editMember(id, name, password, phone, address, photoImage);
		if(result!=1){
			JSFunction.alertBack("업데이트 실패!", out);
		} else{
			session.setAttribute("user_photo", photoImage);
		}
		dao.close();
		
		
	
	
	

%>    
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 정보 수정</h1>
		</div>
	</div>
	
	<div class="container">
			<h1 class="display-5"><%=name%>님 회원 정보 수정 성공!</h1>
	</div>
</body>
</html>