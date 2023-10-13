<%@page import="java.io.File"%>
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
		
		File photoFile = new File(saveDirectory+ File.separator + photoImage);	//이걸 안해주면 삭제가 될 수 있으므로 이런식으로 뉴 파일을 생성해줘야함
		
		MemberDAO dao = new MemberDAO();
			
		String sql = "select * from member";
		PreparedStatement psmt = dao.con.prepareStatement(sql);
		ResultSet rs = psmt.executeQuery();
		
		String result="";
		while(rs.next()) {
			String id2 = rs.getString(1);
					
			if(id.equals(id2)) {
				result="기존회원";		
				request.getRequestDispatcher("addmember.jsp?error=1").forward(request,response);
				break;
			} 
		}
		
		dao.insertMember(id, name, password, phone, address, photoImage);
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
	<jsp:include page="menu.jsp" />
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 가입</h1>
		</div>
	</div>
	
	<div class="container">
			<h1 class="display-5"><%=name%>님 회원가입을 환영합니다!!</h1>
	</div>
</body>
</html>