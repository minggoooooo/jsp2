<%@page import="dto.BoardDTO"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<%@ include file="LoginCheck.jsp" %>
	
	<%
		String num= request.getParameter("num");
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.selectView(num);
		String id = dto.getId();
		if(!session.getAttribute("user_id").toString().equals(id)){
			JSFunction.alertBack("작성자만 삭제 할 수 있습니다", out);
		} else {
			int result = dao.delete(num);
			dao.close();
			if(result==1){
				JSFunction.alertLocation("삭제 성공", "boardmain.jsp", out);
			} else {
				JSFunction.alertBack("삭제 실패", out);
			}
		}
		dao.close();
	%>
</body>
</html>