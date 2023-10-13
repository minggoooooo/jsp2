<%@page import="dao.MembershipDAO"%>
<%@page import="dto.MembershipDTO"%>
<%@page import="common.JSFunction"%>
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
		String pw = request.getParameter("pw");
		String pwc = request.getParameter("pwc");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		
		if(pw.equals(pwc)){
			MembershipDTO dto = new MembershipDTO();
			dto.setMemberid(id);
			dto.setMemberpw(pw);
			dto.setMembername(name);
			dto.setMemberaddress(address);
			dto.setMembertel(tel);
			MembershipDAO dao = new MembershipDAO();
			int result = dao.addmember(dto);
			dao.close();
			
			if(result ==1){
				JSFunction.alertLocation("회원가입 완료", "login.jsp", out);
			} else{
				JSFunction.alertLocation("회원가입 실패", "login.jsp", out);
			}
		} else{
			JSFunction.alertBack("비밀번호가 같지 않습니다", out);
		}
	%>
</body>
</html>