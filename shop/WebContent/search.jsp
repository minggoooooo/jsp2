<%@page import="common.BoardPage"%>
<%@page import="dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "LoginCheck.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%
 	request.setCharacterEncoding("utf-8");
  	String sel = request.getParameter("sel");
  	if(sel != null)
  	session.setAttribute("sel", sel);
  	sel = session.getAttribute("sel").toString();
	String text = request.getParameter("text");
	if(text != null)
  	session.setAttribute("text", text);
  	text = session.getAttribute("text").toString();
	
	BoardDAO dao = new BoardDAO();
	int searchCount = dao.searchCount(sel, text);
	//검색 게시물 전체 개수
	int postPage = Integer.parseInt(application.getInitParameter("POST_PAGE"));
	// 한 페이지 게시물 개수 (20)
	int blockCount = Integer.parseInt(application.getInitParameter("BLOCK_COUNT"));
	// 하단 표시 페	이지 숫자 (10)
	int totalPage = (int)Math.ceil((double)searchCount/ postPage);
	//게시물 페이지 전체 개수
	List<BoardDTO> BoardLists = new ArrayList<>();
	int pageNum = 1;	// 기본 페이지 번호는 1로 세팅
	String pageTemp = request.getParameter("pageNum");
	if(pageTemp != null && !pageTemp.equals(""))
	pageNum= Integer.parseInt(pageTemp);
	int x = (pageNum -1 ) * postPage + 1;
	int virtualNum = searchCount -x +1;
	BoardLists = dao.searchList(x, sel, text);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="menu.jsp" %>
	<%@ include file="LoginCheck.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">게시판</h1>
		</div>
	</div>
	<div class="container">
		<table border="1" width="100%">
			<tr align = "center">
				<th width="10%">번호</th>
				<th width="50%">제목</th>
				<th width="15%">아이디</th>
				<th width="10%">조회수</th>
				<th width="15%">작성일</th>
			</tr>
			<%
				for(BoardDTO bto : BoardLists){
					
				
			%>
 			<tr align="center">
				<td> <%=virtualNum %></td>
				<td> <a href="View.jsp?num=<%=bto.getNum()%>"><%=bto.getTitle() %></a> </td>
				<td> <%=bto.getId() %></td>
				<td> <%=bto.getVisitcount() %></td>
				<td> <%=bto.getPostdate() %></td>
			</tr>
				<% virtualNum--;
				}%> 
				</table>
		
		<table border="1" width="90%" name="a">
		<tr align= "center">
			<td colspan="5">
				<%= BoardPage.pagingStr(searchCount, postPage, blockCount, pageNum, request.getRequestURI()) %>
			</td>	<tr align= "center">
			<td colspan="5">
			<form action="search.jsp" method="get">
				<select name="sel" class="txt">
					<option value="id"> 아이디 </option>
					<option value="title"> 제목 </option>
				</select>
				<input type ="text" name="text" required>
				<input type ="submit" class="btn btn-primary" value="검색">
				</form>
			</td>
		</tr>
		</table>
			<br>
				<button type="button" onclick="location.href='Write.jsp';">  글쓰기 </button>
		
	</div>
</body>
</html>