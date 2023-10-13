<%@page import="common.JSFunction"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dao.BoardDAO"%>
<%@page import="dto.BoardDTO"%>
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
		BoardDTO dto = new BoardDTO();
		String content = request.getParameter("content");
		String title = request.getParameter("title");
		String id = session.getAttribute("user_id").toString();
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		Date now = new Date();
		String postdate = sdf.format(now);
		BoardDAO dao = new BoardDAO();
		dto.setContent(content);
		dto.setTitle(title);
		dto.setId(id);
		dto.setPostdate(postdate);
		int result = dao.insertWrite(dto);
		
		dao.close();
		if(result ==1){
			JSFunction.alertLocation("글쓰기 성공", "boardmain.jsp", out);
		} else{
			JSFunction.alertLocation("글쓰기 실패", "boardmain.jsp", out);
		}
	%>
</body>
</html>