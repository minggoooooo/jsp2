<%@page import="dto.BoardDTO"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		String num = request.getParameter("num");
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.selectView(num);
		dao.updateVisitCount(num);
		dao.close();
	
	%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#abc{
		margin-bottom: 20px;
	}
	button{
		
	}
</style>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<%@ include file="LoginCheck.jsp" %>
	
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상세 게시물 보기</h1>
		</div>
	</div>
	
	<div class="container" align="center">
	<form action="UpdateBoardProcess.jsp" method="post">
		<div class="row g-2 align-items-center" id="abc">
			<div class="col-auto">
				<label for="num" class="col-form-label">게시물 번호</label>
			</div>
			<div class="col-auto">
				<input type="text" id="num" name = "num" class="form-control" value="<%=dto.getNum() %>" readonly>
			</div>
		</div>
		<div class="row g-2 align-items-center" id="abc">
			<div class="col-auto">
				<label for="name" class="col-form-label">작성자 이름</label>
			</div>
			<div class="col-auto">
				<input type="text" id="name" name = "name" class="form-control" value="<%= dto.getName()%>" readonly>
			</div>
		</div>
		<input type="hidden" name="id" value="<%=dto.getId() %>">
		<div class="row g-2 align-items-center" id="abc">
			<div class="col-auto">
				<label for="title" class="col-form-label">게시물 제목</label>
			</div>
			<div class="col-auto">
				<input type="text" id="title" name = "title" class="form-control" value="<%=dto.getTitle() %>">
			</div>
		</div>
		<div class="row g-2 align-items-center">
			<div class="col-auto">
				<label for="content" class="col-form-label" id="abc">게시물 내용</label>
			</div>
			<div class="col-auto">
				<textarea name="content" class="form-control"><%=dto.getContent() %></textarea>
			</div>
		</div>
	
	<button type="submit">게시물 수정</button>
	<button type= "button" onclick="location.href ='DeleteBoard.jsp?num=<%=dto.getNum()%>';">게시물 삭제</button>
	</form>
	</div>
</body>
</html>