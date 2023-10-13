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
	<jsp:include page="menu.jsp" />
	<%@ include file = "LoginCheck.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		String num= request.getParameter("num");
		String id= request.getParameter("id");
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = new BoardDTO();
		if(id.equals(session.getAttribute("user_id").toString())){
			dto.setContent(request.getParameter("content"));
			dto.setTitle(request.getParameter("title"));
			dto.setNum(num);
			int result = dao.updateWrite(dto);
			
			if(result ==1 ){
				JSFunction.alertLocation("수정 성공", "boardmain.jsp", out);
			} else{
				JSFunction.alertLocation("수정 실패", "boardmain.jsp", out);
			}
		} else{
			JSFunction.alertBack("작성자만 수정 할 수 있습니다", out);
		}
			dao.close();
	%>
</body>
</html>